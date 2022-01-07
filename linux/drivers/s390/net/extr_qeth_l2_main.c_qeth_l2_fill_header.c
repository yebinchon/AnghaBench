
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlan_ethhdr {scalar_t__ h_vlan_proto; int h_vlan_TCI; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct TYPE_3__ {unsigned int pkt_length; int vlan_id; int * flags; int id; } ;
struct TYPE_4__ {TYPE_1__ l2; } ;
struct qeth_hdr {TYPE_2__ hdr; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_P_8021Q ;
 int QETH_HEADER_TYPE_L2_TSO ;
 int QETH_HEADER_TYPE_LAYER2 ;
 int QETH_LAYER2_FLAG_BROADCAST ;
 int QETH_LAYER2_FLAG_MULTICAST ;
 int QETH_LAYER2_FLAG_UNICAST ;
 int QETH_LAYER2_FLAG_VLAN ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 scalar_t__ __constant_htons (int ) ;
 int ntohs (int ) ;
 int qeth_get_ether_cast_type (struct sk_buff*) ;
 int qeth_tx_csum (struct sk_buff*,int *,int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 struct vlan_ethhdr* vlan_eth_hdr (struct sk_buff*) ;

__attribute__((used)) static void qeth_l2_fill_header(struct qeth_qdio_out_q *queue,
    struct qeth_hdr *hdr, struct sk_buff *skb,
    int ipv, unsigned int data_len)
{
 int cast_type = qeth_get_ether_cast_type(skb);
 struct vlan_ethhdr *veth = vlan_eth_hdr(skb);

 hdr->hdr.l2.pkt_length = data_len;

 if (skb_is_gso(skb)) {
  hdr->hdr.l2.id = QETH_HEADER_TYPE_L2_TSO;
 } else {
  hdr->hdr.l2.id = QETH_HEADER_TYPE_LAYER2;
  if (skb->ip_summed == CHECKSUM_PARTIAL)
   qeth_tx_csum(skb, &hdr->hdr.l2.flags[1], ipv);
 }


 if (cast_type == RTN_MULTICAST)
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_MULTICAST;
 else if (cast_type == RTN_BROADCAST)
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_BROADCAST;
 else
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_UNICAST;




 if (veth->h_vlan_proto == __constant_htons(ETH_P_8021Q)) {
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_VLAN;
  hdr->hdr.l2.vlan_id = ntohs(veth->h_vlan_TCI);
 }
}
