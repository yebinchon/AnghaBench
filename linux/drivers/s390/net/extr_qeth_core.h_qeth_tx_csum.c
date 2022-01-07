
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {scalar_t__ nexthdr; } ;


 scalar_t__ IPPROTO_UDP ;
 int QETH_HDR_EXT_CSUM_TRANSP_REQ ;
 int QETH_HDR_EXT_UDP ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static inline void qeth_tx_csum(struct sk_buff *skb, u8 *flags, int ipv)
{
 *flags |= QETH_HDR_EXT_CSUM_TRANSP_REQ;
 if ((ipv == 4 && ip_hdr(skb)->protocol == IPPROTO_UDP) ||
     (ipv == 6 && ipv6_hdr(skb)->nexthdr == IPPROTO_UDP))
  *flags |= QETH_HDR_EXT_UDP;
}
