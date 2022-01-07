
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int ip_summed; int truesize; int data_len; int len; } ;
struct napi_struct {int dev; } ;
struct rx_ring {int cq_id; int rx_bytes; int rx_packets; int rx_dropped; struct napi_struct napi; } ;
struct ql_adapter {int ndev; } ;
struct ib_mac_iocb_rsp {int flags2; } ;
struct TYPE_4__ {int offset; int page; int va; } ;
struct TYPE_5__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;
struct TYPE_6__ {int nr_frags; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_8021Q ;
 int IB_MAC_IOCB_RSP_ERR_MASK ;
 int __skb_fill_page_desc (struct sk_buff*,int ,int ,int ,int ) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int drv ;
 int htons (int ) ;
 struct sk_buff* napi_get_frags (struct napi_struct*) ;
 int napi_gro_frags (struct napi_struct*) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int prefetch (int ) ;
 int put_page (int ) ;
 int ql_categorize_rx_err (struct ql_adapter*,int,struct rx_ring*) ;
 struct bq_desc* ql_get_curr_lchunk (struct ql_adapter*,struct rx_ring*) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void ql_process_mac_rx_gro_page(struct ql_adapter *qdev,
     struct rx_ring *rx_ring,
     struct ib_mac_iocb_rsp *ib_mac_rsp,
     u32 length,
     u16 vlan_id)
{
 struct sk_buff *skb;
 struct bq_desc *lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
 struct napi_struct *napi = &rx_ring->napi;


 if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
  ql_categorize_rx_err(qdev, ib_mac_rsp->flags2, rx_ring);
  put_page(lbq_desc->p.pg_chunk.page);
  return;
 }
 napi->dev = qdev->ndev;

 skb = napi_get_frags(napi);
 if (!skb) {
  netif_err(qdev, drv, qdev->ndev,
     "Couldn't get an skb, exiting.\n");
  rx_ring->rx_dropped++;
  put_page(lbq_desc->p.pg_chunk.page);
  return;
 }
 prefetch(lbq_desc->p.pg_chunk.va);
 __skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags,
        lbq_desc->p.pg_chunk.page,
        lbq_desc->p.pg_chunk.offset,
        length);

 skb->len += length;
 skb->data_len += length;
 skb->truesize += length;
 skb_shinfo(skb)->nr_frags++;

 rx_ring->rx_packets++;
 rx_ring->rx_bytes += length;
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb_record_rx_queue(skb, rx_ring->cq_id);
 if (vlan_id != 0xffff)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_id);
 napi_gro_frags(napi);
}
