
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct anybus_mbox_hdr {void* extended; void* offset_low; void* offset_high; void* frame_num; void* frame_count; void* data_size; void* cmd_num; void* info; } ;
struct mbox_priv {void* msg; size_t msg_out_sz; size_t msg_in_sz; struct anybus_mbox_hdr hdr; } ;
struct anybuss_host {int dev; int wq; int qlock; int powerq; int qcache; } ;
struct ab_task {struct mbox_priv mbox_pd; } ;


 int EINVAL ;
 int ENOMEM ;
 int INFO_COMMAND ;
 int INFO_TYPE_APP ;
 int INFO_TYPE_FB ;
 size_t MAX_MBOX_MSG_SZ ;
 struct ab_task* ab_task_create_get (int ,int ) ;
 int ab_task_enqueue_wait (struct ab_task*,int ,int *,int *) ;
 int ab_task_put (struct ab_task*) ;
 void* cpu_to_be16 (int) ;
 size_t max (size_t,size_t) ;
 int mbox_cmd_err (int ,struct mbox_priv*) ;
 int memcpy (void*,void const*,size_t) ;
 int memset (struct anybus_mbox_hdr*,int ,int) ;
 int task_fn_mbox ;

__attribute__((used)) static int _anybus_mbox_cmd(struct anybuss_host *cd,
       u16 cmd_num, bool is_fb_cmd,
    const void *msg_out, size_t msg_out_sz,
    void *msg_in, size_t msg_in_sz,
    const void *ext, size_t ext_sz)
{
 struct ab_task *t;
 struct mbox_priv *pd;
 struct anybus_mbox_hdr *h;
 size_t msg_sz = max(msg_in_sz, msg_out_sz);
 u16 info;
 int err;

 if (msg_sz > MAX_MBOX_MSG_SZ)
  return -EINVAL;
 if (ext && ext_sz > sizeof(h->extended))
  return -EINVAL;
 t = ab_task_create_get(cd->qcache, task_fn_mbox);
 if (!t)
  return -ENOMEM;
 pd = &t->mbox_pd;
 h = &pd->hdr;
 info = is_fb_cmd ? INFO_TYPE_FB : INFO_TYPE_APP;




 memset(h, 0, sizeof(*h));
 h->info = cpu_to_be16(info | INFO_COMMAND);
 h->cmd_num = cpu_to_be16(cmd_num);
 h->data_size = cpu_to_be16(msg_out_sz);
 h->frame_count = cpu_to_be16(1);
 h->frame_num = cpu_to_be16(1);
 h->offset_high = cpu_to_be16(0);
 h->offset_low = cpu_to_be16(0);
 if (ext)
  memcpy(h->extended, ext, ext_sz);
 memcpy(pd->msg, msg_out, msg_out_sz);
 pd->msg_out_sz = msg_out_sz;
 pd->msg_in_sz = msg_in_sz;
 err = ab_task_enqueue_wait(t, cd->powerq, &cd->qlock, &cd->wq);
 if (err)
  goto out;




 err = mbox_cmd_err(cd->dev, pd);
 if (err)
  goto out;
 memcpy(msg_in, pd->msg, msg_in_sz);
out:
 ab_task_put(t);
 return err;
}
