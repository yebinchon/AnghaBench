
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


struct TYPE_8__ {uintptr_t id; int backlog; } ;
struct TYPE_9__ {TYPE_1__ listen; } ;
struct xen_pvcalls_request {int req_id; TYPE_2__ u; int cmd; } ;
struct socket {int dummy; } ;
struct TYPE_11__ {scalar_t__ status; } ;
struct sock_mapping {TYPE_4__ passive; } ;
struct TYPE_13__ {int req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_3__* rsp; int inflight_req; int irq; int socket_lock; TYPE_6__ ring; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_10__ {int ret; int req_id; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sock_mapping*) ;
 int PTR_ERR (struct sock_mapping*) ;
 int PVCALLS_INVALID_ID ;
 int PVCALLS_LISTEN ;
 scalar_t__ PVCALLS_STATUS_BIND ;
 scalar_t__ PVCALLS_STATUS_LISTEN ;
 int READ_ONCE (int ) ;
 struct xen_pvcalls_request* RING_GET_REQUEST (TYPE_6__*,int) ;
 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (TYPE_6__*,int) ;
 struct pvcalls_bedata* dev_get_drvdata (int *) ;
 int get_request (struct pvcalls_bedata*,int*) ;
 int notify_remote_via_irq (int ) ;
 struct sock_mapping* pvcalls_enter_sock (struct socket*) ;
 int pvcalls_exit_sock (struct socket*) ;
 TYPE_5__* pvcalls_front_dev ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

int pvcalls_front_listen(struct socket *sock, int backlog)
{
 struct pvcalls_bedata *bedata;
 struct sock_mapping *map;
 struct xen_pvcalls_request *req;
 int notify, req_id, ret;

 map = pvcalls_enter_sock(sock);
 if (IS_ERR(map))
  return PTR_ERR(map);
 bedata = dev_get_drvdata(&pvcalls_front_dev->dev);

 if (map->passive.status != PVCALLS_STATUS_BIND) {
  pvcalls_exit_sock(sock);
  return -EOPNOTSUPP;
 }

 spin_lock(&bedata->socket_lock);
 ret = get_request(bedata, &req_id);
 if (ret < 0) {
  spin_unlock(&bedata->socket_lock);
  pvcalls_exit_sock(sock);
  return ret;
 }
 req = RING_GET_REQUEST(&bedata->ring, req_id);
 req->req_id = req_id;
 req->cmd = PVCALLS_LISTEN;
 req->u.listen.id = (uintptr_t) map;
 req->u.listen.backlog = backlog;

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

 map->passive.status = PVCALLS_STATUS_LISTEN;
 pvcalls_exit_sock(sock);
 return ret;
}
