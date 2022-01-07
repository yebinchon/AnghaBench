
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvcalls_ioworker {int register_work; int wq; } ;
struct sock_mapping {int io; int read; struct pvcalls_ioworker ioworker; } ;
struct sock {struct sock_mapping* sk_user_data; } ;


 int atomic_inc (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void pvcalls_sk_data_ready(struct sock *sock)
{
 struct sock_mapping *map = sock->sk_user_data;
 struct pvcalls_ioworker *iow;

 if (map == ((void*)0))
  return;

 iow = &map->ioworker;
 atomic_inc(&map->read);
 atomic_inc(&map->io);
 queue_work(iow->wq, &iow->register_work);
}
