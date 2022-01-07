
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct pn544_i2c_phy {scalar_t__ hard_fault; struct i2c_client* i2c_dev; } ;
struct i2c_client {int dummy; } ;


 int EREMOTEIO ;
 int I2C_DUMP_SKB (char*,struct sk_buff*) ;
 int i2c_master_send (struct i2c_client*,int ,int) ;
 int pn544_hci_i2c_add_len_crc (struct sk_buff*) ;
 int pn544_hci_i2c_remove_len_crc (struct sk_buff*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pn544_hci_i2c_write(void *phy_id, struct sk_buff *skb)
{
 int r;
 struct pn544_i2c_phy *phy = phy_id;
 struct i2c_client *client = phy->i2c_dev;

 if (phy->hard_fault != 0)
  return phy->hard_fault;

 usleep_range(3000, 6000);

 pn544_hci_i2c_add_len_crc(skb);

 I2C_DUMP_SKB("i2c frame written", skb);

 r = i2c_master_send(client, skb->data, skb->len);

 if (r == -EREMOTEIO) {
  usleep_range(6000, 10000);
  r = i2c_master_send(client, skb->data, skb->len);
 }

 if (r >= 0) {
  if (r != skb->len)
   r = -EREMOTEIO;
  else
   r = 0;
 }

 pn544_hci_i2c_remove_len_crc(skb);

 return r;
}
