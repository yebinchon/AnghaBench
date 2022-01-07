
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct neighbour {int type; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {int daddr; } ;
struct TYPE_3__ {int daddr; } ;


 int RTN_ANYCAST ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 int RTN_UNICAST ;
 struct neighbour* dst_neigh_lookup_skb (struct dst_entry*,struct sk_buff*) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int ipv4_is_lbcast (int ) ;
 int ipv4_is_multicast (int ) ;
 int ipv6_addr_is_multicast (int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int neigh_release (struct neighbour*) ;
 int qeth_get_ether_cast_type (struct sk_buff*) ;

__attribute__((used)) static int qeth_l3_get_cast_type_rcu(struct sk_buff *skb, struct dst_entry *dst,
         int ipv)
{
 struct neighbour *n = ((void*)0);

 if (dst)
  n = dst_neigh_lookup_skb(dst, skb);

 if (n) {
  int cast_type = n->type;

  neigh_release(n);
  if ((cast_type == RTN_BROADCAST) ||
      (cast_type == RTN_MULTICAST) ||
      (cast_type == RTN_ANYCAST))
   return cast_type;
  return RTN_UNICAST;
 }


 switch (ipv) {
 case 4:
  if (ipv4_is_lbcast(ip_hdr(skb)->daddr))
   return RTN_BROADCAST;
  return ipv4_is_multicast(ip_hdr(skb)->daddr) ?
    RTN_MULTICAST : RTN_UNICAST;
 case 6:
  return ipv6_addr_is_multicast(&ipv6_hdr(skb)->daddr) ?
    RTN_MULTICAST : RTN_UNICAST;
 default:

  return qeth_get_ether_cast_type(skb);
 }
}
