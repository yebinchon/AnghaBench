
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct sk_buff {int dummy; } ;
struct nfcmrvl_private {int ndev; } ;
struct nci_data_hdr {scalar_t__ plen; scalar_t__ rfu; int conn_id; } ;
typedef int __u8 ;


 int GFP_KERNEL ;
 int NCI_CORE_LC_CONNID_PROP_FW_DL ;
 scalar_t__ NCI_DATA_HDR_SIZE ;
 int NCI_MT_DATA_PKT ;
 int NCI_PBF_LAST ;
 int nci_mt_set (int *,int ) ;
 int nci_pbf_set (int *,int ) ;
 struct sk_buff* nci_skb_alloc (int ,scalar_t__,int ) ;
 int pr_err (char*) ;
 struct nci_data_hdr* skb_put (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *alloc_lc_skb(struct nfcmrvl_private *priv, uint8_t plen)
{
 struct sk_buff *skb;
 struct nci_data_hdr *hdr;

 skb = nci_skb_alloc(priv->ndev, (NCI_DATA_HDR_SIZE + plen), GFP_KERNEL);
 if (!skb) {
  pr_err("no memory for data\n");
  return ((void*)0);
 }

 hdr = skb_put(skb, NCI_DATA_HDR_SIZE);
 hdr->conn_id = NCI_CORE_LC_CONNID_PROP_FW_DL;
 hdr->rfu = 0;
 hdr->plen = plen;

 nci_mt_set((__u8 *)hdr, NCI_MT_DATA_PKT);
 nci_pbf_set((__u8 *)hdr, NCI_PBF_LAST);

 return skb;
}
