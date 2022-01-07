
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;





 int WARN_ON (int) ;
 int ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static bool
srcip_matches(struct sockaddr *srcaddr, struct sockaddr *rhs)
{
 switch (srcaddr->sa_family) {
 case 128:
  return (rhs->sa_family == 128);
 case 130: {
  struct sockaddr_in *saddr4 = (struct sockaddr_in *)srcaddr;
  struct sockaddr_in *vaddr4 = (struct sockaddr_in *)rhs;
  return (saddr4->sin_addr.s_addr == vaddr4->sin_addr.s_addr);
 }
 case 129: {
  struct sockaddr_in6 *saddr6 = (struct sockaddr_in6 *)srcaddr;
  struct sockaddr_in6 *vaddr6 = (struct sockaddr_in6 *)rhs;
  return ipv6_addr_equal(&saddr6->sin6_addr, &vaddr6->sin6_addr);
 }
 default:
  WARN_ON(1);
  return 0;
 }
}
