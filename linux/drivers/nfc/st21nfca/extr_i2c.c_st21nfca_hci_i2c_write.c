
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st21nfca_i2c_phy {scalar_t__ hard_fault; int phy_lock; struct i2c_client* i2c_dev; } ;
struct sk_buff {int* data; int len; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EREMOTEIO ;
 int I2C_DUMP_SKB (char*,struct sk_buff*) ;
 int ST21NFCA_BYTE_STUFFING_MASK ;
 int ST21NFCA_ESCAPE_BYTE_STUFFING ;
 int ST21NFCA_HCI_LLC_MAX_SIZE ;
 int ST21NFCA_SOF_EOF ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;
 int st21nfca_hci_add_len_crc (struct sk_buff*) ;
 int st21nfca_hci_remove_len_crc (struct sk_buff*) ;
 int * wait_tab ;

__attribute__((used)) static int st21nfca_hci_i2c_write(void *phy_id, struct sk_buff *skb)
{
 int r = -1, i, j;
 struct st21nfca_i2c_phy *phy = phy_id;
 struct i2c_client *client = phy->i2c_dev;
 u8 tmp[ST21NFCA_HCI_LLC_MAX_SIZE * 2];

 I2C_DUMP_SKB("st21nfca_hci_i2c_write", skb);

 if (phy->hard_fault != 0)
  return phy->hard_fault;






 st21nfca_hci_add_len_crc(skb);


 skb_put_u8(skb, ST21NFCA_SOF_EOF);

 *(u8 *)skb_push(skb, 1) = ST21NFCA_SOF_EOF;







 tmp[0] = skb->data[0];
 for (i = 1, j = 1; i < skb->len - 1; i++, j++) {
  if (skb->data[i] == ST21NFCA_SOF_EOF
      || skb->data[i] == ST21NFCA_ESCAPE_BYTE_STUFFING) {
   tmp[j] = ST21NFCA_ESCAPE_BYTE_STUFFING;
   j++;
   tmp[j] = skb->data[i] ^ ST21NFCA_BYTE_STUFFING_MASK;
  } else {
   tmp[j] = skb->data[i];
  }
 }
 tmp[j] = skb->data[i];
 j++;





 mutex_lock(&phy->phy_lock);
 for (i = 0; i < ARRAY_SIZE(wait_tab) && r < 0; i++) {
  r = i2c_master_send(client, tmp, j);
  if (r < 0)
   msleep(wait_tab[i]);
 }
 mutex_unlock(&phy->phy_lock);

 if (r >= 0) {
  if (r != j)
   r = -EREMOTEIO;
  else
   r = 0;
 }

 st21nfca_hci_remove_len_crc(skb);

 return r;
}
