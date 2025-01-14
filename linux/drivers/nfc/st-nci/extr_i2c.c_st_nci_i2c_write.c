
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_nci_i2c_phy {TYPE_1__* ndlc; struct i2c_client* i2c_dev; } ;
struct sk_buff {int len; int data; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ hard_fault; } ;


 int EREMOTEIO ;
 int i2c_master_send (struct i2c_client*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int st_nci_i2c_write(void *phy_id, struct sk_buff *skb)
{
 int r;
 struct st_nci_i2c_phy *phy = phy_id;
 struct i2c_client *client = phy->i2c_dev;

 if (phy->ndlc->hard_fault != 0)
  return phy->ndlc->hard_fault;

 r = i2c_master_send(client, skb->data, skb->len);
 if (r < 0) {
  usleep_range(1000, 4000);
  r = i2c_master_send(client, skb->data, skb->len);
 }

 if (r >= 0) {
  if (r != skb->len)
   r = -EREMOTEIO;
  else
   r = 0;
 }

 return r;
}
