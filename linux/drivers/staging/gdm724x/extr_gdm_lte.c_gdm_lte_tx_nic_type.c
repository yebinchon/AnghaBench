
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vlan_ethhdr {int h_vlan_encapsulated_proto; } ;
struct udphdr {int dest; } ;
struct sk_buff {void* data; } ;
struct nic {int nic_id; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int protocol; } ;
struct icmp6hdr {int icmp6_type; } ;
struct ethhdr {int h_proto; } ;
typedef int s32 ;


 int ETH_HLEN ;
 int ETH_P_8021Q ;



 int IPPROTO_ICMPV6 ;
 int IPPROTO_UDP ;
 int NDISC_NEIGHBOUR_SOLICITATION ;
 int NIC_TYPE_ARP ;
 int NIC_TYPE_F_DHCP ;
 int NIC_TYPE_F_IPV4 ;
 int NIC_TYPE_F_IPV6 ;
 int NIC_TYPE_F_VLAN ;
 int NIC_TYPE_ICMPV6 ;
 int VLAN_ETH_HLEN ;
 struct nic* netdev_priv (struct net_device*) ;
 int ntohs (int ) ;

__attribute__((used)) static s32 gdm_lte_tx_nic_type(struct net_device *dev, struct sk_buff *skb)
{
 struct nic *nic = netdev_priv(dev);
 struct ethhdr *eth;
 struct vlan_ethhdr *vlan_eth;
 struct iphdr *ip;
 struct ipv6hdr *ipv6;
 int mac_proto;
 void *network_data;
 u32 nic_type;


 nic_type = 0x00000010 | nic->nic_id;


 eth = (struct ethhdr *)skb->data;
 if (ntohs(eth->h_proto) == ETH_P_8021Q) {
  vlan_eth = (struct vlan_ethhdr *)skb->data;
  mac_proto = ntohs(vlan_eth->h_vlan_encapsulated_proto);
  network_data = skb->data + VLAN_ETH_HLEN;
  nic_type |= NIC_TYPE_F_VLAN;
 } else {
  mac_proto = ntohs(eth->h_proto);
  network_data = skb->data + ETH_HLEN;
 }


 switch (mac_proto) {
 case 130:
  nic_type |= NIC_TYPE_ARP;
  break;
 case 129:
  nic_type |= NIC_TYPE_F_IPV4;
  ip = network_data;


  if (ip->protocol == IPPROTO_UDP) {
   struct udphdr *udp =
     network_data + sizeof(struct iphdr);
   if (ntohs(udp->dest) == 67 || ntohs(udp->dest) == 68)
    nic_type |= NIC_TYPE_F_DHCP;
  }
  break;
 case 128:
  nic_type |= NIC_TYPE_F_IPV6;
  ipv6 = network_data;

  if (ipv6->nexthdr == IPPROTO_ICMPV6) {
   struct icmp6hdr *icmp6 =
     network_data + sizeof(struct ipv6hdr);
   if (icmp6->icmp6_type == NDISC_NEIGHBOUR_SOLICITATION)
    nic_type |= NIC_TYPE_ICMPV6;
  } else if (ipv6->nexthdr == IPPROTO_UDP) {
   struct udphdr *udp =
     network_data + sizeof(struct ipv6hdr);
   if (ntohs(udp->dest) == 546 || ntohs(udp->dest) == 547)
    nic_type |= NIC_TYPE_F_DHCP;
  }
  break;
 default:
  break;
 }

 return nic_type;
}
