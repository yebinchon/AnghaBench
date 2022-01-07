
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtproc_info {int rvq; } ;
struct rpmsg_hdr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; struct virtproc_info* priv; } ;


 int dev_dbg (struct device*,char*,unsigned int) ;
 int dev_err (struct device*,char*) ;
 int rpmsg_recv_single (struct virtproc_info*,struct device*,struct rpmsg_hdr*,unsigned int) ;
 struct rpmsg_hdr* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static void rpmsg_recv_done(struct virtqueue *rvq)
{
 struct virtproc_info *vrp = rvq->vdev->priv;
 struct device *dev = &rvq->vdev->dev;
 struct rpmsg_hdr *msg;
 unsigned int len, msgs_received = 0;
 int err;

 msg = virtqueue_get_buf(rvq, &len);
 if (!msg) {
  dev_err(dev, "uhm, incoming signal, but no used buffer ?\n");
  return;
 }

 while (msg) {
  err = rpmsg_recv_single(vrp, dev, msg, len);
  if (err)
   break;

  msgs_received++;

  msg = virtqueue_get_buf(rvq, &len);
 }

 dev_dbg(dev, "Received %u messages\n", msgs_received);


 if (msgs_received)
  virtqueue_kick(vrp->rvq);
}
