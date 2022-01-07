
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfcmrvl_i2c_drv_data {TYPE_2__* i2c; TYPE_1__* priv; } ;
struct nci_ctrl_hdr {int plen; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int ndev; } ;


 int EBADMSG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NCI_CTRL_HDR_SIZE ;
 int NCI_MAX_PAYLOAD_SIZE ;
 int i2c_master_recv (TYPE_2__*,int *,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nci_skb_alloc (int ,int,int ) ;
 int nfc_err (int *,char*,...) ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,struct nci_ctrl_hdr*,int) ;

__attribute__((used)) static int nfcmrvl_i2c_read(struct nfcmrvl_i2c_drv_data *drv_data,
       struct sk_buff **skb)
{
 int ret;
 struct nci_ctrl_hdr nci_hdr;


 ret = i2c_master_recv(drv_data->i2c, (u8 *)&nci_hdr, NCI_CTRL_HDR_SIZE);
 if (ret != NCI_CTRL_HDR_SIZE) {
  nfc_err(&drv_data->i2c->dev, "cannot read NCI header\n");
  return -EBADMSG;
 }

 if (nci_hdr.plen > NCI_MAX_PAYLOAD_SIZE) {
  nfc_err(&drv_data->i2c->dev, "invalid packet payload size\n");
  return -EBADMSG;
 }

 *skb = nci_skb_alloc(drv_data->priv->ndev,
        nci_hdr.plen + NCI_CTRL_HDR_SIZE, GFP_KERNEL);
 if (!*skb)
  return -ENOMEM;


 skb_put_data(*skb, &nci_hdr, NCI_CTRL_HDR_SIZE);

 if (nci_hdr.plen) {

  ret = i2c_master_recv(drv_data->i2c,
          skb_put(*skb, nci_hdr.plen),
          nci_hdr.plen);

  if (ret != nci_hdr.plen) {
   nfc_err(&drv_data->i2c->dev,
    "Invalid frame payload length: %u (expected %u)\n",
    ret, nci_hdr.plen);
   kfree_skb(*skb);
   return -EBADMSG;
  }
 }

 return 0;
}
