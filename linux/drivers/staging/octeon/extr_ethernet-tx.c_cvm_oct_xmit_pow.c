
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int u64 ;
struct sk_buff {int len; scalar_t__ protocol; scalar_t__ pkt_type; scalar_t__ data; int csum; } ;
struct octeon_ethernet {int port; } ;
struct TYPE_24__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {TYPE_2__ stats; int name; } ;
struct TYPE_28__ {int len; int tag_type; int tag; } ;
struct TYPE_23__ {int is_rarp; int is_arp; int is_bcast; int is_mcast; int not_IP; scalar_t__ err_code; scalar_t__ rcv_error; scalar_t__ software; scalar_t__ vlan_id; scalar_t__ vlan_cfi; scalar_t__ vlan_valid; } ;
struct TYPE_31__ {int bufs; int ip_offset; int tcp_or_udp; int is_frag; int is_bcast; int is_mcast; scalar_t__ err_code; scalar_t__ rcv_error; scalar_t__ not_IP; scalar_t__ IP_exc; scalar_t__ L4_error; scalar_t__ software; scalar_t__ is_v6; scalar_t__ dec_ipsec; scalar_t__ dec_ipcomp; scalar_t__ vlan_id; scalar_t__ vlan_cfi; scalar_t__ vlan_valid; } ;
struct TYPE_20__ {TYPE_1__ snoip; TYPE_9__ s; scalar_t__ u64; } ;
struct TYPE_29__ {int back; int size; int pool; int addr; } ;
struct TYPE_30__ {TYPE_7__ s; scalar_t__ u64; } ;
struct TYPE_25__ {int hw_chksum; } ;
struct TYPE_26__ {TYPE_3__ cn38xx; } ;
struct TYPE_27__ {TYPE_4__ pip; } ;
struct TYPE_21__ {void* packet_data; TYPE_6__ word1; TYPE_10__ word2; TYPE_8__ packet_ptr; TYPE_5__ word0; } ;
typedef TYPE_11__ cvmx_wqe_t ;
struct TYPE_22__ {scalar_t__ protocol; int frag_off; } ;


 int CVMX_FPA_PACKET_POOL ;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 int CVMX_FPA_WQE_POOL ;
 int CVMX_HELPER_FIRST_MBUFF_SKIP ;
 int CVMX_HELPER_INPUT_TAG_TYPE ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 int ETH_P_RARP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int OCTEON_CN68XX ;
 int OCTEON_IS_MODEL (int ) ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_MULTICAST ;
 void* cvmx_fpa_alloc (int ) ;
 int cvmx_fpa_free (TYPE_11__*,int ,int) ;
 int cvmx_pow_work_submit (TYPE_11__*,int ,int ,int ,int ) ;
 int cvmx_ptr_to_phys (void*) ;
 int cvmx_wqe_get_grp (TYPE_11__*) ;
 int cvmx_wqe_get_qos (TYPE_11__*) ;
 int cvmx_wqe_set_grp (TYPE_11__*,int ) ;
 int cvmx_wqe_set_port (TYPE_11__*,int) ;
 int cvmx_wqe_set_qos (TYPE_11__*,int) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 TYPE_12__* ip_hdr (struct sk_buff*) ;
 int memcpy (void*,scalar_t__,int) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int pow_send_group ;
 int printk_ratelimited (char*,int ) ;
 scalar_t__ unlikely (int) ;

int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 void *packet_buffer;
 void *copy_location;


 cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);

 if (unlikely(!work)) {
  printk_ratelimited("%s: Failed to allocate a work queue entry\n",
       dev->name);
  dev->stats.tx_dropped++;
  dev_kfree_skb_any(skb);
  return 0;
 }


 packet_buffer = cvmx_fpa_alloc(CVMX_FPA_PACKET_POOL);
 if (unlikely(!packet_buffer)) {
  printk_ratelimited("%s: Failed to allocate a packet buffer\n",
       dev->name);
  cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, 1);
  dev->stats.tx_dropped++;
  dev_kfree_skb_any(skb);
  return 0;
 }
 copy_location = packet_buffer + sizeof(u64);
 copy_location += ((CVMX_HELPER_FIRST_MBUFF_SKIP + 7) & 0xfff8) + 6;







 memcpy(copy_location, skb->data, skb->len);





 if (!OCTEON_IS_MODEL(OCTEON_CN68XX))
  work->word0.pip.cn38xx.hw_chksum = skb->csum;
 work->word1.len = skb->len;
 cvmx_wqe_set_port(work, priv->port);
 cvmx_wqe_set_qos(work, priv->port & 0x7);
 cvmx_wqe_set_grp(work, pow_send_group);
 work->word1.tag_type = CVMX_HELPER_INPUT_TAG_TYPE;
 work->word1.tag = pow_send_group;

 work->word2.u64 = 0;
 work->word2.s.bufs = 1;
 work->packet_ptr.u64 = 0;
 work->packet_ptr.s.addr = cvmx_ptr_to_phys(copy_location);
 work->packet_ptr.s.pool = CVMX_FPA_PACKET_POOL;
 work->packet_ptr.s.size = CVMX_FPA_PACKET_POOL_SIZE;
 work->packet_ptr.s.back = (copy_location - packet_buffer) >> 7;

 if (skb->protocol == htons(ETH_P_IP)) {
  work->word2.s.ip_offset = 14;






  work->word2.s.tcp_or_udp =
      (ip_hdr(skb)->protocol == IPPROTO_TCP) ||
      (ip_hdr(skb)->protocol == IPPROTO_UDP);
  work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
       (ip_hdr(skb)->frag_off ==
           1 << 14));




  work->word2.s.is_bcast = (skb->pkt_type == PACKET_BROADCAST);
  work->word2.s.is_mcast = (skb->pkt_type == PACKET_MULTICAST);
  memcpy(work->packet_data, skb->data + 10,
         sizeof(work->packet_data));
 } else {






  work->word2.snoip.is_rarp = skb->protocol == htons(ETH_P_RARP);
  work->word2.snoip.is_arp = skb->protocol == htons(ETH_P_ARP);
  work->word2.snoip.is_bcast =
      (skb->pkt_type == PACKET_BROADCAST);
  work->word2.snoip.is_mcast =
      (skb->pkt_type == PACKET_MULTICAST);
  work->word2.snoip.not_IP = 1;






  memcpy(work->packet_data, skb->data, sizeof(work->packet_data));
 }


 cvmx_pow_work_submit(work, work->word1.tag, work->word1.tag_type,
        cvmx_wqe_get_qos(work), cvmx_wqe_get_grp(work));
 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;
 dev_consume_skb_any(skb);
 return 0;
}
