
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int MAC_WCID_ATTRIBUTE_BSS_IDX ;
 int MAC_WCID_ATTRIBUTE_BSS_IDX_EXT ;
 int MAC_WCID_ATTR_ENTRY (int) ;
 int rt2800_register_read (struct rt2x00_dev*,int) ;
 int rt2800_register_write (struct rt2x00_dev*,int,int) ;
 int rt2x00_set_field32 (int*,int ,int) ;

__attribute__((used)) static void rt2800_config_wcid_attr_bssidx(struct rt2x00_dev *rt2x00dev,
        int wcid, u32 bssidx)
{
 u32 offset = MAC_WCID_ATTR_ENTRY(wcid);
 u32 reg;





 reg = rt2800_register_read(rt2x00dev, offset);
 rt2x00_set_field32(&reg, MAC_WCID_ATTRIBUTE_BSS_IDX, (bssidx & 0x7));
 rt2x00_set_field32(&reg, MAC_WCID_ATTRIBUTE_BSS_IDX_EXT,
      (bssidx & 0x8) >> 3);
 rt2800_register_write(rt2x00dev, offset, reg);
}
