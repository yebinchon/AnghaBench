
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct sock_mapping {int refcount; } ;
struct TYPE_2__ {scalar_t__ sk_send_head; } ;


 int atomic_dec (int *) ;
 int pvcalls_exit () ;

__attribute__((used)) static inline void pvcalls_exit_sock(struct socket *sock)
{
 struct sock_mapping *map;

 map = (struct sock_mapping *)sock->sk->sk_send_head;
 atomic_dec(&map->refcount);
 pvcalls_exit();
}
