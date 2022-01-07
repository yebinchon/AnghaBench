
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
struct sk_buff {scalar_t__ len; } ;
struct microread_i2c_phy {struct i2c_client* i2c_dev; } ;
struct i2c_client {int dev; } ;


 int EBADMSG ;
 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int I2C_DUMP_SKB (char*,struct sk_buff*) ;
 scalar_t__ MICROREAD_I2C_FRAME_TAILROOM ;
 int MICROREAD_I2C_LLC_MAX_SIZE ;
 int MICROREAD_I2C_LLC_MIN_SIZE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int check_crc (struct sk_buff*) ;
 int i2c_master_recv (struct i2c_client*,int*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_err (int *,char*) ;
 int skb_pull (struct sk_buff*,int) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int microread_i2c_read(struct microread_i2c_phy *phy,
         struct sk_buff **skb)
{
 int r;
 u8 len;
 u8 tmp[MICROREAD_I2C_LLC_MAX_SIZE - 1];
 struct i2c_client *client = phy->i2c_dev;

 r = i2c_master_recv(client, &len, 1);
 if (r != 1) {
  nfc_err(&client->dev, "cannot read len byte\n");
  return -EREMOTEIO;
 }

 if ((len < MICROREAD_I2C_LLC_MIN_SIZE) ||
     (len > MICROREAD_I2C_LLC_MAX_SIZE)) {
  nfc_err(&client->dev, "invalid len byte\n");
  r = -EBADMSG;
  goto flush;
 }

 *skb = alloc_skb(1 + len, GFP_KERNEL);
 if (*skb == ((void*)0)) {
  r = -ENOMEM;
  goto flush;
 }

 skb_put_u8(*skb, len);

 r = i2c_master_recv(client, skb_put(*skb, len), len);
 if (r != len) {
  kfree_skb(*skb);
  return -EREMOTEIO;
 }

 I2C_DUMP_SKB("cc frame read", *skb);

 r = check_crc(*skb);
 if (r != 0) {
  kfree_skb(*skb);
  r = -EBADMSG;
  goto flush;
 }

 skb_pull(*skb, 1);
 skb_trim(*skb, (*skb)->len - MICROREAD_I2C_FRAME_TAILROOM);

 usleep_range(3000, 6000);

 return 0;

flush:
 if (i2c_master_recv(client, tmp, sizeof(tmp)) < 0)
  r = -EREMOTEIO;

 usleep_range(3000, 6000);

 return r;
}
