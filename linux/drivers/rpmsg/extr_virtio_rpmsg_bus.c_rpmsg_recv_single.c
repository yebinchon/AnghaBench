
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtproc_info {unsigned int buf_size; int rvq; int endpoints_lock; int endpoints; } ;
struct scatterlist {int dummy; } ;
struct rpmsg_hdr {unsigned int len; int src; int data; int dst; int reserved; int flags; } ;
struct rpmsg_endpoint {int refcount; int cb_lock; int priv; int rpdev; int (* cb ) (int ,int ,unsigned int,int ,int ) ;} ;
struct device {int dummy; } ;


 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int GFP_KERNEL ;
 int __ept_release ;
 int dev_dbg (struct device*,char*,int ,int ,unsigned int,int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,...) ;
 int dynamic_hex_dump (char*,int ,int,int,struct rpmsg_hdr*,int ,int) ;
 struct rpmsg_endpoint* idr_find (int *,int ) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmsg_sg_init (struct scatterlist*,struct rpmsg_hdr*,unsigned int) ;
 int stub1 (int ,int ,unsigned int,int ,int ) ;
 int virtqueue_add_inbuf (int ,struct scatterlist*,int,struct rpmsg_hdr*,int ) ;

__attribute__((used)) static int rpmsg_recv_single(struct virtproc_info *vrp, struct device *dev,
        struct rpmsg_hdr *msg, unsigned int len)
{
 struct rpmsg_endpoint *ept;
 struct scatterlist sg;
 int err;

 dev_dbg(dev, "From: 0x%x, To: 0x%x, Len: %d, Flags: %d, Reserved: %d\n",
  msg->src, msg->dst, msg->len, msg->flags, msg->reserved);
 if (len > vrp->buf_size ||
     msg->len > (len - sizeof(struct rpmsg_hdr))) {
  dev_warn(dev, "inbound msg too big: (%d, %d)\n", len, msg->len);
  return -EINVAL;
 }


 mutex_lock(&vrp->endpoints_lock);

 ept = idr_find(&vrp->endpoints, msg->dst);


 if (ept)
  kref_get(&ept->refcount);

 mutex_unlock(&vrp->endpoints_lock);

 if (ept) {

  mutex_lock(&ept->cb_lock);

  if (ept->cb)
   ept->cb(ept->rpdev, msg->data, msg->len, ept->priv,
    msg->src);

  mutex_unlock(&ept->cb_lock);


  kref_put(&ept->refcount, __ept_release);
 } else
  dev_warn(dev, "msg received with no recipient\n");


 rpmsg_sg_init(&sg, msg, vrp->buf_size);


 err = virtqueue_add_inbuf(vrp->rvq, &sg, 1, msg, GFP_KERNEL);
 if (err < 0) {
  dev_err(dev, "failed to add a virtqueue buffer: %d\n", err);
  return err;
 }

 return 0;
}
