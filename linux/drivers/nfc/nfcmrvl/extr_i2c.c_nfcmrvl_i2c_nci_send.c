
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct nfcmrvl_private {int flags; struct nfcmrvl_i2c_drv_data* drv_data; } ;
struct nfcmrvl_i2c_drv_data {int dev; int i2c; } ;


 int EREMOTEIO ;
 int NFCMRVL_PHY_ERROR ;
 int i2c_master_send (int ,int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_err (int ,char*,int,int) ;
 int nfc_info (int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int nfcmrvl_i2c_nci_send(struct nfcmrvl_private *priv,
    struct sk_buff *skb)
{
 struct nfcmrvl_i2c_drv_data *drv_data = priv->drv_data;
 int ret;

 if (test_bit(NFCMRVL_PHY_ERROR, &priv->flags))
  return -EREMOTEIO;

 ret = i2c_master_send(drv_data->i2c, skb->data, skb->len);


 if (ret == -EREMOTEIO) {
  nfc_info(drv_data->dev, "chip may sleep, retry\n");
  usleep_range(6000, 10000);
  ret = i2c_master_send(drv_data->i2c, skb->data, skb->len);
 }

 if (ret >= 0) {
  if (ret != skb->len) {
   nfc_err(drv_data->dev,
    "Invalid length sent: %u (expected %u)\n",
    ret, skb->len);
   ret = -EREMOTEIO;
  } else
   ret = 0;
  kfree_skb(skb);
 }

 return ret;
}
