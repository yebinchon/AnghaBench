
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int SOCK_XDP ;
 int sock_flag (int ,int ) ;

__attribute__((used)) static bool vhost_sock_xdp(struct socket *sock)
{
 return sock_flag(sock->sk, SOCK_XDP);
}
