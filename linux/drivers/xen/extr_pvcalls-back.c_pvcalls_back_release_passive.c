
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xenbus_device {int dummy; } ;
struct sockpass_mapping {int wq; TYPE_2__* sock; int saved_data_ready; } ;
struct pvcalls_fedata {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_callback_lock; int sk_data_ready; int * sk_user_data; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int kfree (struct sockpass_mapping*) ;
 int sock_release (TYPE_2__*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int pvcalls_back_release_passive(struct xenbus_device *dev,
     struct pvcalls_fedata *fedata,
     struct sockpass_mapping *mappass)
{
 if (mappass->sock->sk != ((void*)0)) {
  write_lock_bh(&mappass->sock->sk->sk_callback_lock);
  mappass->sock->sk->sk_user_data = ((void*)0);
  mappass->sock->sk->sk_data_ready = mappass->saved_data_ready;
  write_unlock_bh(&mappass->sock->sk->sk_callback_lock);
 }
 sock_release(mappass->sock);
 flush_workqueue(mappass->wq);
 destroy_workqueue(mappass->wq);
 kfree(mappass);

 return 0;
}
