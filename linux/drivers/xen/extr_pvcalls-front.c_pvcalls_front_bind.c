
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


struct TYPE_8__ {uintptr_t id; int len; int addr; } ;
struct TYPE_9__ {TYPE_1__ bind; } ;
struct xen_pvcalls_request {int req_id; TYPE_2__ u; int cmd; } ;
struct socket {scalar_t__ type; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_11__ {int status; int inflight_accept_req; } ;
struct sock_mapping {int active_socket; TYPE_4__ passive; struct socket* sock; } ;
struct TYPE_13__ {int req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_3__* rsp; int inflight_req; int irq; int socket_lock; TYPE_6__ ring; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_10__ {int ret; int req_id; } ;


 scalar_t__ AF_INET ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sock_mapping*) ;
 int PTR_ERR (struct sock_mapping*) ;
 int PVCALLS_BIND ;
 int PVCALLS_INVALID_ID ;
 int PVCALLS_STATUS_BIND ;
 int READ_ONCE (int ) ;
 struct xen_pvcalls_request* RING_GET_REQUEST (TYPE_6__*,int) ;
 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (TYPE_6__*,int) ;
 scalar_t__ SOCK_STREAM ;
 struct pvcalls_bedata* dev_get_drvdata (int *) ;
 int get_request (struct pvcalls_bedata*,int*) ;
 int init_waitqueue_head (int *) ;
 int memcpy (int ,struct sockaddr*,int) ;
 int notify_remote_via_irq (int ) ;
 struct sock_mapping* pvcalls_enter_sock (struct socket*) ;
 int pvcalls_exit_sock (struct socket*) ;
 TYPE_5__* pvcalls_front_dev ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

int pvcalls_front_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
{
 struct pvcalls_bedata *bedata;
 struct sock_mapping *map = ((void*)0);
 struct xen_pvcalls_request *req;
 int notify, req_id, ret;

 if (addr->sa_family != AF_INET || sock->type != SOCK_STREAM)
  return -EOPNOTSUPP;

 map = pvcalls_enter_sock(sock);
 if (IS_ERR(map))
  return PTR_ERR(map);
 bedata = dev_get_drvdata(&pvcalls_front_dev->dev);

 spin_lock(&bedata->socket_lock);
 ret = get_request(bedata, &req_id);
 if (ret < 0) {
  spin_unlock(&bedata->socket_lock);
  pvcalls_exit_sock(sock);
  return ret;
 }
 req = RING_GET_REQUEST(&bedata->ring, req_id);
 req->req_id = req_id;
 map->sock = sock;
 req->cmd = PVCALLS_BIND;
 req->u.bind.id = (uintptr_t)map;
 memcpy(req->u.bind.addr, addr, sizeof(*addr));
 req->u.bind.len = addr_len;

 init_waitqueue_head(&map->passive.inflight_accept_req);

 map->active_socket = 0;

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

 map->passive.status = PVCALLS_STATUS_BIND;
 pvcalls_exit_sock(sock);
 return 0;
}
