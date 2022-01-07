
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct TYPE_3__ {int in6_u; } ;
struct sockaddr_in6 {int sin6_port; TYPE_1__ sin6_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_2__ sin_addr; } ;
struct iscsi_np {int np_network_transport; int np_sockaddr; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ AF_INET6 ;
 int memcmp (int *,int *,int) ;
 scalar_t__ ntohs (int ) ;

bool iscsit_check_np_match(
 struct sockaddr_storage *sockaddr,
 struct iscsi_np *np,
 int network_transport)
{
 struct sockaddr_in *sock_in, *sock_in_e;
 struct sockaddr_in6 *sock_in6, *sock_in6_e;
 bool ip_match = 0;
 u16 port, port_e;

 if (sockaddr->ss_family == AF_INET6) {
  sock_in6 = (struct sockaddr_in6 *)sockaddr;
  sock_in6_e = (struct sockaddr_in6 *)&np->np_sockaddr;

  if (!memcmp(&sock_in6->sin6_addr.in6_u,
       &sock_in6_e->sin6_addr.in6_u,
       sizeof(struct in6_addr)))
   ip_match = 1;

  port = ntohs(sock_in6->sin6_port);
  port_e = ntohs(sock_in6_e->sin6_port);
 } else {
  sock_in = (struct sockaddr_in *)sockaddr;
  sock_in_e = (struct sockaddr_in *)&np->np_sockaddr;

  if (sock_in->sin_addr.s_addr == sock_in_e->sin_addr.s_addr)
   ip_match = 1;

  port = ntohs(sock_in->sin_port);
  port_e = ntohs(sock_in_e->sin_port);
 }

 if (ip_match && (port_e == port) &&
     (np->np_network_transport == network_transport))
  return 1;

 return 0;
}
