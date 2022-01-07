
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {struct rproc_vring* priv; } ;
struct rproc_vring {int notifyid; TYPE_1__* rvdev; } ;
struct rproc {TYPE_2__* ops; int dev; } ;
struct TYPE_4__ {int (* kick ) (struct rproc*,int) ;} ;
struct TYPE_3__ {struct rproc* rproc; } ;


 int dev_dbg (int *,char*,int) ;
 int stub1 (struct rproc*,int) ;

__attribute__((used)) static bool rproc_virtio_notify(struct virtqueue *vq)
{
 struct rproc_vring *rvring = vq->priv;
 struct rproc *rproc = rvring->rvdev->rproc;
 int notifyid = rvring->notifyid;

 dev_dbg(&rproc->dev, "kicking vq index: %d\n", notifyid);

 rproc->ops->kick(rproc, notifyid);
 return 1;
}
