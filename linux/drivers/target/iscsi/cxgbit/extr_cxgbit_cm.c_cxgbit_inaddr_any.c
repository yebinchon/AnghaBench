
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct sockaddr_storage local_addr; } ;
struct cxgbit_np {TYPE_1__ com; } ;


 int AF_INET ;
 int AF_INET6 ;
 int INADDR_ANY ;
 int IPV6_ADDR_ANY ;
 scalar_t__ htonl (int ) ;
 int ipv6_addr_type (struct in6_addr const*) ;

__attribute__((used)) static bool cxgbit_inaddr_any(struct cxgbit_np *cnp)
{
 struct sockaddr_storage *sockaddr = &cnp->com.local_addr;
 int ss_family = sockaddr->ss_family;
 int addr_type;

 if (ss_family == AF_INET) {
  struct sockaddr_in *sin;

  sin = (struct sockaddr_in *)sockaddr;
  if (sin->sin_addr.s_addr == htonl(INADDR_ANY))
   return 1;
 } else if (ss_family == AF_INET6) {
  struct sockaddr_in6 *sin6;

  sin6 = (struct sockaddr_in6 *)sockaddr;
  addr_type = ipv6_addr_type((const struct in6_addr *)
    &sin6->sin6_addr);
  if (addr_type == IPV6_ADDR_ANY)
   return 1;
 }
 return 0;
}
