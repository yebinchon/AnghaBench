
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mt7601u_dev {int dummy; } ;


 int const get_unaligned_le32 (int const*) ;
 int mt7601u_wr (struct mt7601u_dev*,scalar_t__ const,int const) ;

void mt7601u_addr_wr(struct mt7601u_dev *dev, const u32 offset, const u8 *addr)
{
 mt7601u_wr(dev, offset, get_unaligned_le32(addr));
 mt7601u_wr(dev, offset + 4, addr[4] | addr[5] << 8);
}
