
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipv6_addr; } ;
struct qeth_hdr_layer3 {int flags; TYPE_1__ next_hop; } ;


 int QETH_HDR_IPV6 ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static inline bool qeth_l3_same_next_hop(struct qeth_hdr_layer3 *h1,
      struct qeth_hdr_layer3 *h2)
{
 return !((h1->flags ^ h2->flags) & QETH_HDR_IPV6) &&
        ipv6_addr_equal(&h1->next_hop.ipv6_addr,
          &h2->next_hop.ipv6_addr);
}
