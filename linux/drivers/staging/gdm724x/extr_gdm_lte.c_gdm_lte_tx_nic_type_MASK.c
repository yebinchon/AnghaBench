#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct vlan_ethhdr {int /*<<< orphan*/  h_vlan_encapsulated_proto; } ;
struct udphdr {int /*<<< orphan*/  dest; } ;
struct sk_buff {void* data; } ;
struct nic {int nic_id; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  nexthdr; } ;
struct iphdr {int /*<<< orphan*/  protocol; } ;
struct icmp6hdr {int /*<<< orphan*/  icmp6_type; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
typedef  int s32 ;

/* Variables and functions */
 int ETH_HLEN ; 
 int ETH_P_8021Q ; 
#define  ETH_P_ARP 130 
#define  ETH_P_IP 129 
#define  ETH_P_IPV6 128 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  NDISC_NEIGHBOUR_SOLICITATION ; 
 int NIC_TYPE_ARP ; 
 int NIC_TYPE_F_DHCP ; 
 int NIC_TYPE_F_IPV4 ; 
 int NIC_TYPE_F_IPV6 ; 
 int NIC_TYPE_F_VLAN ; 
 int NIC_TYPE_ICMPV6 ; 
 int VLAN_ETH_HLEN ; 
 struct nic* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC2(struct net_device *dev, struct sk_buff *skb)
{
	struct nic *nic = FUNC0(dev);
	struct ethhdr *eth;
	struct vlan_ethhdr *vlan_eth;
	struct iphdr *ip;
	struct ipv6hdr *ipv6;
	int mac_proto;
	void *network_data;
	u32 nic_type;

	/* NIC TYPE is based on the nic_id of this net_device */
	nic_type = 0x00000010 | nic->nic_id;

	/* Get ethernet protocol */
	eth = (struct ethhdr *)skb->data;
	if (FUNC1(eth->h_proto) == ETH_P_8021Q) {
		vlan_eth = (struct vlan_ethhdr *)skb->data;
		mac_proto = FUNC1(vlan_eth->h_vlan_encapsulated_proto);
		network_data = skb->data + VLAN_ETH_HLEN;
		nic_type |= NIC_TYPE_F_VLAN;
	} else {
		mac_proto = FUNC1(eth->h_proto);
		network_data = skb->data + ETH_HLEN;
	}

	/* Process packet for nic type */
	switch (mac_proto) {
	case ETH_P_ARP:
		nic_type |= NIC_TYPE_ARP;
		break;
	case ETH_P_IP:
		nic_type |= NIC_TYPE_F_IPV4;
		ip = network_data;

		/* Check DHCPv4 */
		if (ip->protocol == IPPROTO_UDP) {
			struct udphdr *udp =
					network_data + sizeof(struct iphdr);
			if (FUNC1(udp->dest) == 67 || FUNC1(udp->dest) == 68)
				nic_type |= NIC_TYPE_F_DHCP;
		}
		break;
	case ETH_P_IPV6:
		nic_type |= NIC_TYPE_F_IPV6;
		ipv6 = network_data;

		if (ipv6->nexthdr == IPPROTO_ICMPV6) /* Check NDP request */ {
			struct icmp6hdr *icmp6 =
					network_data + sizeof(struct ipv6hdr);
			if (icmp6->icmp6_type == NDISC_NEIGHBOUR_SOLICITATION)
				nic_type |= NIC_TYPE_ICMPV6;
		} else if (ipv6->nexthdr == IPPROTO_UDP) /* Check DHCPv6 */ {
			struct udphdr *udp =
					network_data + sizeof(struct ipv6hdr);
			if (FUNC1(udp->dest) == 546 || FUNC1(udp->dest) == 547)
				nic_type |= NIC_TYPE_F_DHCP;
		}
		break;
	default:
		break;
	}

	return nic_type;
}