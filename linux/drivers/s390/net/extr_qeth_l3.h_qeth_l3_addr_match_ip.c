
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_6__ {TYPE_2__ a4; TYPE_1__ a6; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_3__ u; } ;


 scalar_t__ QETH_PROT_IPV6 ;
 int ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static inline bool qeth_l3_addr_match_ip(struct qeth_ipaddr *a1,
      struct qeth_ipaddr *a2)
{
 if (a1->proto != a2->proto)
  return 0;
 if (a1->proto == QETH_PROT_IPV6)
  return ipv6_addr_equal(&a1->u.a6.addr, &a2->u.a6.addr);
 return a1->u.a4.addr == a2->u.a4.addr;
}
