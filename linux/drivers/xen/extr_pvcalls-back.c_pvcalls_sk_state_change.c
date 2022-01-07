
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_mapping {int irq; int read; } ;
struct sock {struct sock_mapping* sk_user_data; } ;


 int atomic_inc (int *) ;
 int notify_remote_via_irq (int ) ;

__attribute__((used)) static void pvcalls_sk_state_change(struct sock *sock)
{
 struct sock_mapping *map = sock->sk_user_data;

 if (map == ((void*)0))
  return;

 atomic_inc(&map->read);
 notify_remote_via_irq(map->irq);
}
