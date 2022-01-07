
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {scalar_t__ macaddr; int dev; } ;


 int FIELD_PREP (int ,int) ;
 int MT_MAC_ADDR_DW0 ;
 int MT_MAC_ADDR_DW1 ;
 int MT_MAC_ADDR_DW1_U2ME_MASK ;
 int dev_info (int ,char*,scalar_t__) ;
 int eth_random_addr (scalar_t__) ;
 int ether_addr_copy (scalar_t__,int const*) ;
 int get_unaligned_le16 (scalar_t__) ;
 int get_unaligned_le32 (scalar_t__) ;
 int is_valid_ether_addr (scalar_t__) ;
 int mt76_wr (struct mt7601u_dev*,int ,int) ;

void mt7601u_set_macaddr(struct mt7601u_dev *dev, const u8 *addr)
{
 ether_addr_copy(dev->macaddr, addr);

 if (!is_valid_ether_addr(dev->macaddr)) {
  eth_random_addr(dev->macaddr);
  dev_info(dev->dev,
    "Invalid MAC address, using random address %pM\n",
    dev->macaddr);
 }

 mt76_wr(dev, MT_MAC_ADDR_DW0, get_unaligned_le32(dev->macaddr));
 mt76_wr(dev, MT_MAC_ADDR_DW1, get_unaligned_le16(dev->macaddr + 4) |
  FIELD_PREP(MT_MAC_ADDR_DW1_U2ME_MASK, 0xff));
}
