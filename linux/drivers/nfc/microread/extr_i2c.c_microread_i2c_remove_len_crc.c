
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int MICROREAD_I2C_FRAME_HEADROOM ;
 int MICROREAD_I2C_FRAME_TAILROOM ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void microread_i2c_remove_len_crc(struct sk_buff *skb)
{
 skb_pull(skb, MICROREAD_I2C_FRAME_HEADROOM);
 skb_trim(skb, MICROREAD_I2C_FRAME_TAILROOM);
}
