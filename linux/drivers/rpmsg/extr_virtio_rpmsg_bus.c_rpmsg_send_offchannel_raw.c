
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct virtproc_info {int buf_size; int tx_lock; int svq; int sendq; } ;
struct virtio_rpmsg_channel {struct virtproc_info* vrp; } ;
struct scatterlist {int dummy; } ;
struct rpmsg_hdr {int len; scalar_t__ reserved; scalar_t__ flags; void* dst; void* src; int data; } ;
struct device {int dummy; } ;
struct rpmsg_device {struct device dev; } ;


 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 void* RPMSG_ADDR_ANY ;
 int dev_dbg (struct device*,char*,void*,void*,int,scalar_t__,scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 int dynamic_hex_dump (char*,int ,int,int,struct rpmsg_hdr*,int,int) ;
 struct rpmsg_hdr* get_a_tx_buf (struct virtproc_info*) ;
 int memcpy (int ,void*,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmsg_downref_sleepers (struct virtproc_info*) ;
 int rpmsg_sg_init (struct scatterlist*,struct rpmsg_hdr*,int) ;
 int rpmsg_upref_sleepers (struct virtproc_info*) ;
 struct virtio_rpmsg_channel* to_virtio_rpmsg_channel (struct rpmsg_device*) ;
 int virtqueue_add_outbuf (int ,struct scatterlist*,int,struct rpmsg_hdr*,int ) ;
 int virtqueue_kick (int ) ;
 int wait_event_interruptible_timeout (int ,struct rpmsg_hdr*,int ) ;

__attribute__((used)) static int rpmsg_send_offchannel_raw(struct rpmsg_device *rpdev,
         u32 src, u32 dst,
         void *data, int len, bool wait)
{
 struct virtio_rpmsg_channel *vch = to_virtio_rpmsg_channel(rpdev);
 struct virtproc_info *vrp = vch->vrp;
 struct device *dev = &rpdev->dev;
 struct scatterlist sg;
 struct rpmsg_hdr *msg;
 int err;


 if (src == RPMSG_ADDR_ANY || dst == RPMSG_ADDR_ANY) {
  dev_err(dev, "invalid addr (src 0x%x, dst 0x%x)\n", src, dst);
  return -EINVAL;
 }
 if (len > vrp->buf_size - sizeof(struct rpmsg_hdr)) {
  dev_err(dev, "message is too big (%d)\n", len);
  return -EMSGSIZE;
 }


 msg = get_a_tx_buf(vrp);
 if (!msg && !wait)
  return -ENOMEM;


 while (!msg) {

  rpmsg_upref_sleepers(vrp);







  err = wait_event_interruptible_timeout(vrp->sendq,
     (msg = get_a_tx_buf(vrp)),
     msecs_to_jiffies(15000));


  rpmsg_downref_sleepers(vrp);


  if (!err) {
   dev_err(dev, "timeout waiting for a tx buffer\n");
   return -ERESTARTSYS;
  }
 }

 msg->len = len;
 msg->flags = 0;
 msg->src = src;
 msg->dst = dst;
 msg->reserved = 0;
 memcpy(msg->data, data, len);

 dev_dbg(dev, "TX From 0x%x, To 0x%x, Len %d, Flags %d, Reserved %d\n",
  msg->src, msg->dst, msg->len, msg->flags, msg->reserved);





 rpmsg_sg_init(&sg, msg, sizeof(*msg) + len);

 mutex_lock(&vrp->tx_lock);


 err = virtqueue_add_outbuf(vrp->svq, &sg, 1, msg, GFP_KERNEL);
 if (err) {





  dev_err(dev, "virtqueue_add_outbuf failed: %d\n", err);
  goto out;
 }


 virtqueue_kick(vrp->svq);
out:
 mutex_unlock(&vrp->tx_lock);
 return err;
}
