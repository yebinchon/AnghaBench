
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned char len; void* dev; } ;
struct TYPE_3__ {scalar_t__ hci_muxed; } ;
struct nfcmrvl_private {TYPE_2__* if_ops; TYPE_1__ config; int dev; } ;
struct nci_dev {int dummy; } ;
struct TYPE_4__ {int (* nci_send ) (struct nfcmrvl_private*,struct sk_buff*) ;} ;


 unsigned char NFCMRVL_HCI_COMMAND_CODE ;
 int NFCMRVL_HCI_EVENT_HEADER_SIZE ;
 unsigned char NFCMRVL_HCI_OCF ;
 unsigned char NFCMRVL_HCI_OGF ;
 struct nfcmrvl_private* nci_get_drvdata (struct nci_dev*) ;
 int nfc_info (int ,char*,unsigned char) ;
 unsigned char* skb_push (struct sk_buff*,int ) ;
 int stub1 (struct nfcmrvl_private*,struct sk_buff*) ;

__attribute__((used)) static int nfcmrvl_nci_send(struct nci_dev *ndev, struct sk_buff *skb)
{
 struct nfcmrvl_private *priv = nci_get_drvdata(ndev);

 nfc_info(priv->dev, "send entry, len %d\n", skb->len);

 skb->dev = (void *)ndev;

 if (priv->config.hci_muxed) {
  unsigned char *hdr;
  unsigned char len = skb->len;

  hdr = skb_push(skb, NFCMRVL_HCI_EVENT_HEADER_SIZE);
  hdr[0] = NFCMRVL_HCI_COMMAND_CODE;
  hdr[1] = NFCMRVL_HCI_OGF;
  hdr[2] = NFCMRVL_HCI_OCF;
  hdr[3] = len;
 }

 return priv->if_ops->nci_send(priv, skb);
}
