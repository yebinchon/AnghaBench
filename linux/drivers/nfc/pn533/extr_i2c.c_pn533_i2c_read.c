
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int* data; } ;
struct pn533_i2c_phy {TYPE_2__* priv; struct i2c_client* i2c_dev; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* rx_frame_size ) (int*) ;} ;


 int EBUSY ;
 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int PN533_EXT_FRAME_HEADER_LEN ;
 int PN533_STD_FRAME_MAX_PAYLOAD_LEN ;
 int PN533_STD_FRAME_TAIL_LEN ;
 struct sk_buff* alloc_skb (int,int ) ;
 int i2c_master_recv (struct i2c_client*,int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_err (int *,char*,...) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int ) ;
 int stub1 (int*) ;

__attribute__((used)) static int pn533_i2c_read(struct pn533_i2c_phy *phy, struct sk_buff **skb)
{
 struct i2c_client *client = phy->i2c_dev;
 int len = PN533_EXT_FRAME_HEADER_LEN +
    PN533_STD_FRAME_MAX_PAYLOAD_LEN +
    PN533_STD_FRAME_TAIL_LEN + 1;
 int r;

 *skb = alloc_skb(len, GFP_KERNEL);
 if (*skb == ((void*)0))
  return -ENOMEM;

 r = i2c_master_recv(client, skb_put(*skb, len), len);
 if (r != len) {
  nfc_err(&client->dev, "cannot read. r=%d len=%d\n", r, len);
  kfree_skb(*skb);
  return -EREMOTEIO;
 }

 if (!((*skb)->data[0] & 0x01)) {
  nfc_err(&client->dev, "READY flag not set");
  kfree_skb(*skb);
  return -EBUSY;
 }


 skb_pull(*skb, 1);

 skb_trim(*skb, phy->priv->ops->rx_frame_size((*skb)->data));

 return 0;
}
