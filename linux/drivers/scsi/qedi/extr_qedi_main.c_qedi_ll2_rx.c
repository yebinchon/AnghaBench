
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct skb_work_list {int list; scalar_t__ vlan_id; struct sk_buff* skb; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct qedi_uio_dev {struct qedi_uio_ctrl* uctrl; } ;
struct qedi_uio_ctrl {int dummy; } ;
struct qedi_ctx {int ll2_recv_thread; int ll2_lock; int ll2_skb_list; int dbg_ctx; struct qedi_uio_dev* udev; int flags; } ;
struct ethhdr {scalar_t__ h_proto; } ;


 int ETH_ALEN ;
 int ETH_P_8021Q ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int QEDI_ERR (int *,char*) ;
 int QEDI_INFO (int *,int ,char*,...) ;
 int QEDI_LOG_LL2 ;
 int QEDI_LOG_UIO ;
 int QEDI_WARN (int *,char*) ;
 int UIO_DEV_OPENED ;
 int VLAN_HLEN ;
 int __vlan_insert_tag (struct sk_buff*,scalar_t__,scalar_t__) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct skb_work_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memmove (int *,struct ethhdr*,int) ;
 scalar_t__ skb_pull (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int qedi_ll2_rx(void *cookie, struct sk_buff *skb, u32 arg1, u32 arg2)
{
 struct qedi_ctx *qedi = (struct qedi_ctx *)cookie;
 struct qedi_uio_dev *udev;
 struct qedi_uio_ctrl *uctrl;
 struct skb_work_list *work;
 struct ethhdr *eh;

 if (!qedi) {
  QEDI_ERR(((void*)0), "qedi is NULL\n");
  return -1;
 }

 if (!test_bit(UIO_DEV_OPENED, &qedi->flags)) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_UIO,
     "UIO DEV is not opened\n");
  kfree_skb(skb);
  return 0;
 }

 eh = (struct ethhdr *)skb->data;

 if (eh->h_proto == htons(ETH_P_8021Q)) {
  memmove((u8 *)eh + VLAN_HLEN, eh, ETH_ALEN * 2);
  eh = (struct ethhdr *)skb_pull(skb, VLAN_HLEN);
  skb_reset_mac_header(skb);
 }


 if (eh->h_proto != htons(ETH_P_ARP) &&
     eh->h_proto != htons(ETH_P_IP) &&
     eh->h_proto != htons(ETH_P_IPV6)) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_LL2,
     "Dropping frame ethertype [0x%x] len [0x%x].\n",
     eh->h_proto, skb->len);
  kfree_skb(skb);
  return 0;
 }

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_LL2,
    "Allowed frame ethertype [0x%x] len [0x%x].\n",
    eh->h_proto, skb->len);

 udev = qedi->udev;
 uctrl = udev->uctrl;

 work = kzalloc(sizeof(*work), GFP_ATOMIC);
 if (!work) {
  QEDI_WARN(&qedi->dbg_ctx,
     "Could not allocate work so dropping frame.\n");
  kfree_skb(skb);
  return 0;
 }

 INIT_LIST_HEAD(&work->list);
 work->skb = skb;

 if (skb_vlan_tag_present(skb))
  work->vlan_id = skb_vlan_tag_get(skb);

 if (work->vlan_id)
  __vlan_insert_tag(work->skb, htons(ETH_P_8021Q), work->vlan_id);

 spin_lock_bh(&qedi->ll2_lock);
 list_add_tail(&work->list, &qedi->ll2_skb_list);
 spin_unlock_bh(&qedi->ll2_lock);

 wake_up_process(qedi->ll2_recv_thread);

 return 0;
}
