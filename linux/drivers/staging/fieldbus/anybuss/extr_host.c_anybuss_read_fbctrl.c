
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct anybuss_host {int wq; int qlock; int powerq; int qcache; } ;
struct anybuss_client {struct anybuss_host* host; } ;
struct TYPE_2__ {int buf; } ;
struct ab_task {TYPE_1__ area_pd; } ;


 int EFAULT ;
 int ENOMEM ;
 int FBCTRL_AREA ;
 int IND_AX_FBCTRL ;
 int MAX_FBCTRL_AREA_SZ ;
 int ab_task_enqueue_wait (struct ab_task*,int ,int *,int *) ;
 int ab_task_put (struct ab_task*) ;
 int area_range_ok (int ,size_t,int ,int ) ;
 struct ab_task* create_area_reader (int ,int ,int ,size_t) ;
 int memcpy (void*,int ,size_t) ;

int anybuss_read_fbctrl(struct anybuss_client *client, u16 addr,
   void *buf, size_t count)
{
 struct anybuss_host *cd = client->host;
 struct ab_task *t;
 int ret;

 if (count == 0)
  return 0;
 if (!area_range_ok(addr, count, FBCTRL_AREA,
      MAX_FBCTRL_AREA_SZ))
  return -EFAULT;
 t = create_area_reader(cd->qcache, IND_AX_FBCTRL, addr, count);
 if (!t)
  return -ENOMEM;
 ret = ab_task_enqueue_wait(t, cd->powerq, &cd->qlock, &cd->wq);
 if (ret)
  goto out;
 memcpy(buf, t->area_pd.buf, count);
out:
 ab_task_put(t);
 return ret;
}
