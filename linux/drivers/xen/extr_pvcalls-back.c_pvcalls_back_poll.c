
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xenbus_device {int dev; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {TYPE_2__ poll; } ;
struct xen_pvcalls_response {scalar_t__ cmd; int ret; TYPE_3__ u; int req_id; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_11__ {TYPE_4__ poll; } ;
struct xen_pvcalls_request {scalar_t__ cmd; TYPE_5__ u; int req_id; } ;
struct sockpass_mapping {int copy_lock; struct xen_pvcalls_request reqcopy; TYPE_1__* sock; } ;
struct request_sock_queue {int rskq_accept_head; } ;
struct TYPE_12__ {int rsp_prod_pvt; } ;
struct pvcalls_fedata {TYPE_6__ ring; int socket_lock; int socketpass_mappings; } ;
struct inet_connection_sock {struct request_sock_queue icsk_accept_queue; } ;
struct TYPE_7__ {int sk; } ;


 int EINTR ;
 int EINVAL ;
 int * READ_ONCE (int ) ;
 struct xen_pvcalls_response* RING_GET_RESPONSE (TYPE_6__*,int ) ;
 struct pvcalls_fedata* dev_get_drvdata (int *) ;
 int down (int *) ;
 struct inet_connection_sock* inet_csk (int ) ;
 struct sockpass_mapping* radix_tree_lookup (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up (int *) ;

__attribute__((used)) static int pvcalls_back_poll(struct xenbus_device *dev,
        struct xen_pvcalls_request *req)
{
 struct pvcalls_fedata *fedata;
 struct sockpass_mapping *mappass;
 struct xen_pvcalls_response *rsp;
 struct inet_connection_sock *icsk;
 struct request_sock_queue *queue;
 unsigned long flags;
 int ret;
 bool data;

 fedata = dev_get_drvdata(&dev->dev);

 down(&fedata->socket_lock);
 mappass = radix_tree_lookup(&fedata->socketpass_mappings,
        req->u.poll.id);
 up(&fedata->socket_lock);
 if (mappass == ((void*)0))
  return -EINVAL;





 spin_lock_irqsave(&mappass->copy_lock, flags);
 if (mappass->reqcopy.cmd != 0) {
  ret = -EINTR;
  goto out;
 }

 mappass->reqcopy = *req;
 icsk = inet_csk(mappass->sock->sk);
 queue = &icsk->icsk_accept_queue;
 data = READ_ONCE(queue->rskq_accept_head) != ((void*)0);
 if (data) {
  mappass->reqcopy.cmd = 0;
  ret = 0;
  goto out;
 }
 spin_unlock_irqrestore(&mappass->copy_lock, flags);


 return -1;

out:
 spin_unlock_irqrestore(&mappass->copy_lock, flags);

 rsp = RING_GET_RESPONSE(&fedata->ring, fedata->ring.rsp_prod_pvt++);
 rsp->req_id = req->req_id;
 rsp->cmd = req->cmd;
 rsp->u.poll.id = req->u.poll.id;
 rsp->ret = ret;
 return 0;
}
