
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct virtproc_info {int endpoints_lock; int endpoints; TYPE_1__* vdev; } ;
struct rpmsg_endpoint {int addr; int refcount; int * ops; void* priv; int cb; struct rpmsg_device* rpdev; int cb_lock; } ;
struct device {int dummy; } ;
struct rpmsg_device {struct device dev; } ;
typedef int rpmsg_rx_cb_t ;
struct TYPE_2__ {struct device dev; } ;


 int GFP_KERNEL ;
 int RPMSG_ADDR_ANY ;
 int RPMSG_RESERVED_ADDRESSES ;
 int __ept_release ;
 int dev_err (struct device*,char*,int) ;
 int idr_alloc (int *,struct rpmsg_endpoint*,int,int,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct rpmsg_endpoint* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int virtio_endpoint_ops ;

__attribute__((used)) static struct rpmsg_endpoint *__rpmsg_create_ept(struct virtproc_info *vrp,
       struct rpmsg_device *rpdev,
       rpmsg_rx_cb_t cb,
       void *priv, u32 addr)
{
 int id_min, id_max, id;
 struct rpmsg_endpoint *ept;
 struct device *dev = rpdev ? &rpdev->dev : &vrp->vdev->dev;

 ept = kzalloc(sizeof(*ept), GFP_KERNEL);
 if (!ept)
  return ((void*)0);

 kref_init(&ept->refcount);
 mutex_init(&ept->cb_lock);

 ept->rpdev = rpdev;
 ept->cb = cb;
 ept->priv = priv;
 ept->ops = &virtio_endpoint_ops;


 if (addr == RPMSG_ADDR_ANY) {
  id_min = RPMSG_RESERVED_ADDRESSES;
  id_max = 0;
 } else {
  id_min = addr;
  id_max = addr + 1;
 }

 mutex_lock(&vrp->endpoints_lock);


 id = idr_alloc(&vrp->endpoints, ept, id_min, id_max, GFP_KERNEL);
 if (id < 0) {
  dev_err(dev, "idr_alloc failed: %d\n", id);
  goto free_ept;
 }
 ept->addr = id;

 mutex_unlock(&vrp->endpoints_lock);

 return ept;

free_ept:
 mutex_unlock(&vrp->endpoints_lock);
 kref_put(&ept->refcount, __ept_release);
 return ((void*)0);
}
