
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct virtio_input_event {int value; void* code; void* type; } ;
struct virtio_input {int lock; int sts; scalar_t__ ready; } ;
struct scatterlist {int dummy; } ;
typedef int s32 ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct virtio_input_event*) ;
 struct virtio_input_event* kzalloc (int,int ) ;
 int sg_init_one (struct scatterlist*,struct virtio_input_event*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_add_outbuf (int ,struct scatterlist*,int,struct virtio_input_event*,int ) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static int virtinput_send_status(struct virtio_input *vi,
     u16 type, u16 code, s32 value)
{
 struct virtio_input_event *stsbuf;
 struct scatterlist sg[1];
 unsigned long flags;
 int rc;

 stsbuf = kzalloc(sizeof(*stsbuf), GFP_ATOMIC);
 if (!stsbuf)
  return -ENOMEM;

 stsbuf->type = cpu_to_le16(type);
 stsbuf->code = cpu_to_le16(code);
 stsbuf->value = cpu_to_le32(value);
 sg_init_one(sg, stsbuf, sizeof(*stsbuf));

 spin_lock_irqsave(&vi->lock, flags);
 if (vi->ready) {
  rc = virtqueue_add_outbuf(vi->sts, sg, 1, stsbuf, GFP_ATOMIC);
  virtqueue_kick(vi->sts);
 } else {
  rc = -ENODEV;
 }
 spin_unlock_irqrestore(&vi->lock, flags);

 if (rc != 0)
  kfree(stsbuf);
 return rc;
}
