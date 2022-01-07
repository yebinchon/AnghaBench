
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * h_dest; } ;


 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 int RTN_UNICAST ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 scalar_t__ is_broadcast_ether_addr (int *) ;
 scalar_t__ is_multicast_ether_addr (int *) ;

__attribute__((used)) static inline int qeth_get_ether_cast_type(struct sk_buff *skb)
{
 u8 *addr = eth_hdr(skb)->h_dest;

 if (is_multicast_ether_addr(addr))
  return is_broadcast_ether_addr(addr) ? RTN_BROADCAST :
             RTN_MULTICAST;
 return RTN_UNICAST;
}
