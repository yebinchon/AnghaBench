
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7601u_dev {int dummy; } ;
typedef int s8 ;


 int BBP_R47_F_TEMP ;
 int MT_RF_BYPASS_0 ;
 int MT_RF_SETTING_0 ;
 int mt7601u_bbp_r47_get (struct mt7601u_dev*,int,int ) ;
 int mt7601u_bbp_rmw (struct mt7601u_dev*,int,int ,int) ;
 int mt7601u_bbp_rr (struct mt7601u_dev*,int) ;
 int mt7601u_bbp_wr (struct mt7601u_dev*,int,int) ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int trace_read_temp (struct mt7601u_dev*,int) ;

__attribute__((used)) static s8 mt7601u_read_bootup_temp(struct mt7601u_dev *dev)
{
 u8 bbp_val, temp;
 u32 rf_bp, rf_set;
 int i;

 rf_set = mt7601u_rr(dev, MT_RF_SETTING_0);
 rf_bp = mt7601u_rr(dev, MT_RF_BYPASS_0);

 mt7601u_wr(dev, MT_RF_BYPASS_0, 0);
 mt7601u_wr(dev, MT_RF_SETTING_0, 0x00000010);
 mt7601u_wr(dev, MT_RF_BYPASS_0, 0x00000010);

 bbp_val = mt7601u_bbp_rmw(dev, 47, 0, 0x10);

 mt7601u_bbp_wr(dev, 22, 0x40);

 for (i = 100; i && (bbp_val & 0x10); i--)
  bbp_val = mt7601u_bbp_rr(dev, 47);

 temp = mt7601u_bbp_r47_get(dev, bbp_val, BBP_R47_F_TEMP);

 mt7601u_bbp_wr(dev, 22, 0);

 bbp_val = mt7601u_bbp_rr(dev, 21);
 bbp_val |= 0x02;
 mt7601u_bbp_wr(dev, 21, bbp_val);
 bbp_val &= ~0x02;
 mt7601u_bbp_wr(dev, 21, bbp_val);

 mt7601u_wr(dev, MT_RF_BYPASS_0, 0);
 mt7601u_wr(dev, MT_RF_SETTING_0, rf_set);
 mt7601u_wr(dev, MT_RF_BYPASS_0, rf_bp);

 trace_read_temp(dev, temp);
 return temp;
}
