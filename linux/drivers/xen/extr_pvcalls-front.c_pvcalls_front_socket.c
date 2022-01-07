
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {uintptr_t id; int protocol; scalar_t__ type; int domain; } ;
struct TYPE_10__ {TYPE_2__ socket; } ;
struct xen_pvcalls_request {int req_id; TYPE_3__ u; int cmd; } ;
struct socket {scalar_t__ type; TYPE_1__* sk; } ;
struct sock_mapping {int list; } ;
struct TYPE_13__ {int req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_4__* rsp; int inflight_req; int irq; int socket_lock; TYPE_6__ ring; int socket_mappings; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_11__ {int ret; int req_id; } ;
struct TYPE_8__ {void* sk_send_head; } ;


 int AF_INET ;
 int EACCES ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IPPROTO_IP ;
 int PVCALLS_INVALID_ID ;
 int PVCALLS_SOCKET ;
 int READ_ONCE (int ) ;
 struct xen_pvcalls_request* RING_GET_REQUEST (TYPE_6__*,int) ;
 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (TYPE_6__*,int) ;
 scalar_t__ SOCK_STREAM ;
 struct pvcalls_bedata* dev_get_drvdata (int *) ;
 int get_request (struct pvcalls_bedata*,int*) ;
 int kfree (struct sock_mapping*) ;
 struct sock_mapping* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int notify_remote_via_irq (int ) ;
 int pvcalls_enter () ;
 int pvcalls_exit () ;
 TYPE_5__* pvcalls_front_dev ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

int pvcalls_front_socket(struct socket *sock)
{
 struct pvcalls_bedata *bedata;
 struct sock_mapping *map = ((void*)0);
 struct xen_pvcalls_request *req;
 int notify, req_id, ret;
 if (sock->type != SOCK_STREAM)
  return -EOPNOTSUPP;

 pvcalls_enter();
 if (!pvcalls_front_dev) {
  pvcalls_exit();
  return -EACCES;
 }
 bedata = dev_get_drvdata(&pvcalls_front_dev->dev);

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (map == ((void*)0)) {
  pvcalls_exit();
  return -ENOMEM;
 }

 spin_lock(&bedata->socket_lock);

 ret = get_request(bedata, &req_id);
 if (ret < 0) {
  kfree(map);
  spin_unlock(&bedata->socket_lock);
  pvcalls_exit();
  return ret;
 }







 sock->sk->sk_send_head = (void *)map;
 list_add_tail(&map->list, &bedata->socket_mappings);

 req = RING_GET_REQUEST(&bedata->ring, req_id);
 req->req_id = req_id;
 req->cmd = PVCALLS_SOCKET;
 req->u.socket.id = (uintptr_t) map;
 req->u.socket.domain = AF_INET;
 req->u.socket.type = SOCK_STREAM;
 req->u.socket.protocol = IPPROTO_IP;

 bedata->ring.req_prod_pvt++;
 RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(&bedata->ring, notify);
 spin_unlock(&bedata->socket_lock);
 if (notify)
  notify_remote_via_irq(bedata->irq);

 wait_event(bedata->inflight_req,
     READ_ONCE(bedata->rsp[req_id].req_id) == req_id);


 smp_rmb();
 ret = bedata->rsp[req_id].ret;
 bedata->rsp[req_id].req_id = PVCALLS_INVALID_ID;

 pvcalls_exit();
 return ret;
}
