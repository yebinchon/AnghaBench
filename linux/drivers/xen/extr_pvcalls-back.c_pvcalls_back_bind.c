
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct xenbus_device {int dev; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_12__ {TYPE_2__ bind; } ;
struct xen_pvcalls_response {int ret; TYPE_3__ u; int cmd; int req_id; } ;
struct TYPE_13__ {int id; int len; int addr; } ;
struct TYPE_14__ {TYPE_4__ bind; } ;
struct xen_pvcalls_request {TYPE_5__ u; int cmd; int req_id; } ;
struct sockpass_mapping {scalar_t__ wq; TYPE_6__* sock; int saved_data_ready; int id; struct pvcalls_fedata* fedata; int copy_lock; int register_work; } ;
struct sockaddr {int dummy; } ;
struct TYPE_16__ {int rsp_prod_pvt; } ;
struct pvcalls_fedata {TYPE_9__ ring; int socket_lock; int socketpass_mappings; } ;
struct TYPE_15__ {TYPE_1__* sk; } ;
struct TYPE_10__ {int sk_callback_lock; int sk_data_ready; struct sockpass_mapping* sk_user_data; } ;


 int AF_INET ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct xen_pvcalls_response* RING_GET_RESPONSE (TYPE_9__*,int ) ;
 int SOCK_STREAM ;
 int WQ_UNBOUND ;
 int __pvcalls_back_accept ;
 scalar_t__ alloc_workqueue (char*,int ,int) ;
 int destroy_workqueue (scalar_t__) ;
 struct pvcalls_fedata* dev_get_drvdata (int *) ;
 int down (int *) ;
 int inet_bind (TYPE_6__*,struct sockaddr*,int ) ;
 int kfree (struct sockpass_mapping*) ;
 struct sockpass_mapping* kzalloc (int,int ) ;
 int pvcalls_pass_sk_data_ready ;
 int radix_tree_insert (int *,int ,struct sockpass_mapping*) ;
 int sock_create (int ,int ,int ,TYPE_6__**) ;
 int sock_release (TYPE_6__*) ;
 int spin_lock_init (int *) ;
 int up (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int pvcalls_back_bind(struct xenbus_device *dev,
        struct xen_pvcalls_request *req)
{
 struct pvcalls_fedata *fedata;
 int ret;
 struct sockpass_mapping *map;
 struct xen_pvcalls_response *rsp;

 fedata = dev_get_drvdata(&dev->dev);

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (map == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 INIT_WORK(&map->register_work, __pvcalls_back_accept);
 spin_lock_init(&map->copy_lock);
 map->wq = alloc_workqueue("pvcalls_wq", WQ_UNBOUND, 1);
 if (!map->wq) {
  ret = -ENOMEM;
  goto out;
 }

 ret = sock_create(AF_INET, SOCK_STREAM, 0, &map->sock);
 if (ret < 0)
  goto out;

 ret = inet_bind(map->sock, (struct sockaddr *)&req->u.bind.addr,
   req->u.bind.len);
 if (ret < 0)
  goto out;

 map->fedata = fedata;
 map->id = req->u.bind.id;

 down(&fedata->socket_lock);
 ret = radix_tree_insert(&fedata->socketpass_mappings, map->id,
    map);
 up(&fedata->socket_lock);
 if (ret)
  goto out;

 write_lock_bh(&map->sock->sk->sk_callback_lock);
 map->saved_data_ready = map->sock->sk->sk_data_ready;
 map->sock->sk->sk_user_data = map;
 map->sock->sk->sk_data_ready = pvcalls_pass_sk_data_ready;
 write_unlock_bh(&map->sock->sk->sk_callback_lock);

out:
 if (ret) {
  if (map && map->sock)
   sock_release(map->sock);
  if (map && map->wq)
   destroy_workqueue(map->wq);
  kfree(map);
 }
 rsp = RING_GET_RESPONSE(&fedata->ring, fedata->ring.rsp_prod_pvt++);
 rsp->req_id = req->req_id;
 rsp->cmd = req->cmd;
 rsp->u.bind.id = req->u.bind.id;
 rsp->ret = ret;
 return 0;
}
