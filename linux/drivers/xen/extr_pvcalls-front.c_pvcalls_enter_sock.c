
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct sock_mapping {int refcount; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ sk_send_head; } ;


 int ENOTCONN ;
 int ENOTSOCK ;
 struct sock_mapping* ERR_PTR (int ) ;
 int atomic_inc (int *) ;
 int * dev_get_drvdata (int *) ;
 int pvcalls_enter () ;
 TYPE_2__* pvcalls_front_dev ;

__attribute__((used)) static inline struct sock_mapping *pvcalls_enter_sock(struct socket *sock)
{
 struct sock_mapping *map;

 if (!pvcalls_front_dev ||
  dev_get_drvdata(&pvcalls_front_dev->dev) == ((void*)0))
  return ERR_PTR(-ENOTCONN);

 map = (struct sock_mapping *)sock->sk->sk_send_head;
 if (map == ((void*)0))
  return ERR_PTR(-ENOTSOCK);

 pvcalls_enter();
 atomic_inc(&map->refcount);
 return map;
}
