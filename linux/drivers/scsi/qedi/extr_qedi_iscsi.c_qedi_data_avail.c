
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int ip_summed; int data; } ;
struct qedi_uio_dev {int tx_pkt; scalar_t__ uctrl; } ;
struct qedi_uio_ctrl {int host_tx_pkt_len; int hw_tx_cons; } ;
struct qedi_ctx {int dbg_ctx; struct qedi_uio_dev* udev; struct qed_dev* cdev; } ;
struct qed_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ll2; } ;
struct TYPE_3__ {int (* start_xmit ) (struct qed_dev*,struct sk_buff*,int ) ;} ;


 int CHECKSUM_NONE ;
 int EINVAL ;
 int ETH_P_8021Q ;
 int GFP_ATOMIC ;
 int QEDI_ERR (int *,char*,...) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 TYPE_2__* qedi_ops ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (struct qed_dev*,struct sk_buff*,int ) ;

__attribute__((used)) static int qedi_data_avail(struct qedi_ctx *qedi, u16 vlanid)
{
 struct qed_dev *cdev = qedi->cdev;
 struct qedi_uio_dev *udev;
 struct qedi_uio_ctrl *uctrl;
 struct sk_buff *skb;
 u32 len;
 int rc = 0;

 udev = qedi->udev;
 if (!udev) {
  QEDI_ERR(&qedi->dbg_ctx, "udev is NULL.\n");
  return -EINVAL;
 }

 uctrl = (struct qedi_uio_ctrl *)udev->uctrl;
 if (!uctrl) {
  QEDI_ERR(&qedi->dbg_ctx, "uctlr is NULL.\n");
  return -EINVAL;
 }

 len = uctrl->host_tx_pkt_len;
 if (!len) {
  QEDI_ERR(&qedi->dbg_ctx, "Invalid len %u\n", len);
  return -EINVAL;
 }

 skb = alloc_skb(len, GFP_ATOMIC);
 if (!skb) {
  QEDI_ERR(&qedi->dbg_ctx, "alloc_skb failed\n");
  return -EINVAL;
 }

 skb_put(skb, len);
 memcpy(skb->data, udev->tx_pkt, len);
 skb->ip_summed = CHECKSUM_NONE;

 if (vlanid)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlanid);

 rc = qedi_ops->ll2->start_xmit(cdev, skb, 0);
 if (rc) {
  QEDI_ERR(&qedi->dbg_ctx, "ll2 start_xmit returned %d\n",
    rc);
  kfree_skb(skb);
 }

 uctrl->host_tx_pkt_len = 0;
 uctrl->hw_tx_cons++;

 return rc;
}
