
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xenbus_device {int dev; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ accept; } ;
struct xen_pvcalls_response {scalar_t__ cmd; int ret; TYPE_2__ u; int req_id; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {TYPE_3__ accept; } ;
struct xen_pvcalls_request {scalar_t__ cmd; TYPE_4__ u; int req_id; } ;
struct sockpass_mapping {int register_work; int wq; int copy_lock; struct xen_pvcalls_request reqcopy; } ;
struct TYPE_10__ {int rsp_prod_pvt; } ;
struct pvcalls_fedata {TYPE_5__ ring; int socket_lock; int socketpass_mappings; } ;


 int EINTR ;
 int EINVAL ;
 struct xen_pvcalls_response* RING_GET_RESPONSE (TYPE_5__*,int ) ;
 struct pvcalls_fedata* dev_get_drvdata (int *) ;
 int down (int *) ;
 int queue_work (int ,int *) ;
 struct sockpass_mapping* radix_tree_lookup (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up (int *) ;

__attribute__((used)) static int pvcalls_back_accept(struct xenbus_device *dev,
          struct xen_pvcalls_request *req)
{
 struct pvcalls_fedata *fedata;
 struct sockpass_mapping *mappass;
 int ret = -EINVAL;
 struct xen_pvcalls_response *rsp;
 unsigned long flags;

 fedata = dev_get_drvdata(&dev->dev);

 down(&fedata->socket_lock);
 mappass = radix_tree_lookup(&fedata->socketpass_mappings,
  req->u.accept.id);
 up(&fedata->socket_lock);
 if (mappass == ((void*)0))
  goto out_error;





 spin_lock_irqsave(&mappass->copy_lock, flags);
 if (mappass->reqcopy.cmd != 0) {
  spin_unlock_irqrestore(&mappass->copy_lock, flags);
  ret = -EINTR;
  goto out_error;
 }

 mappass->reqcopy = *req;
 spin_unlock_irqrestore(&mappass->copy_lock, flags);
 queue_work(mappass->wq, &mappass->register_work);


 return -1;

out_error:
 rsp = RING_GET_RESPONSE(&fedata->ring, fedata->ring.rsp_prod_pvt++);
 rsp->req_id = req->req_id;
 rsp->cmd = req->cmd;
 rsp->u.accept.id = req->u.accept.id;
 rsp->ret = ret;
 return 0;
}
