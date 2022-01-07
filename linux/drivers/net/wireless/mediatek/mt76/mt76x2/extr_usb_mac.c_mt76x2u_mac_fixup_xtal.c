
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt76x02_dev {int dummy; } ;
typedef int s8 ;


 int CFG ;
 int FIELD_GET (int ,int) ;
 int MT_BKOFF_SLOT_CFG ;
 int MT_BKOFF_SLOT_CFG_CC_DELAY ;
 int MT_EE_NIC_CONF_2 ;
 int MT_EE_NIC_CONF_2_XTAL_OPTION ;
 int MT_EE_XTAL_TRIM_1 ;
 int MT_EE_XTAL_TRIM_2 ;
 int MT_FCE_L2_STUFF ;
 int MT_FCE_L2_STUFF_WR_MPDU_LEN_EN ;
 int MT_VEND_ADDR (int ,int ) ;
 int MT_XIFS_TIME_CFG ;
 int MT_XIFS_TIME_CFG_OFDM_SIFS ;
 int MT_XO_CTRL5 ;
 int MT_XO_CTRL5_C2_VAL ;
 int MT_XO_CTRL6 ;
 int MT_XO_CTRL6_C2_CTRL ;
 int MT_XO_CTRL7 ;
 int mdelay (int) ;
 int mt76_clear (struct mt76x02_dev*,int ,int ) ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int ) ;
 int mt76_wr (struct mt76x02_dev*,int,int) ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;

__attribute__((used)) static void mt76x2u_mac_fixup_xtal(struct mt76x02_dev *dev)
{
 s8 offset = 0;
 u16 eep_val;

 eep_val = mt76x02_eeprom_get(dev, MT_EE_XTAL_TRIM_2);

 offset = eep_val & 0x7f;
 if ((eep_val & 0xff) == 0xff)
  offset = 0;
 else if (eep_val & 0x80)
  offset = 0 - offset;

 eep_val >>= 8;
 if (eep_val == 0x00 || eep_val == 0xff) {
  eep_val = mt76x02_eeprom_get(dev, MT_EE_XTAL_TRIM_1);
  eep_val &= 0xff;

  if (eep_val == 0x00 || eep_val == 0xff)
   eep_val = 0x14;
 }

 eep_val &= 0x7f;
 mt76_rmw_field(dev, MT_VEND_ADDR(CFG, MT_XO_CTRL5),
         MT_XO_CTRL5_C2_VAL, eep_val + offset);
 mt76_set(dev, MT_VEND_ADDR(CFG, MT_XO_CTRL6), MT_XO_CTRL6_C2_CTRL);

 mt76_wr(dev, 0x504, 0x06000000);
 mt76_wr(dev, 0x50c, 0x08800000);
 mdelay(5);
 mt76_wr(dev, 0x504, 0x0);


 mt76_rmw_field(dev, MT_XIFS_TIME_CFG,
         MT_XIFS_TIME_CFG_OFDM_SIFS, 0xd);
 mt76_rmw_field(dev, MT_BKOFF_SLOT_CFG, MT_BKOFF_SLOT_CFG_CC_DELAY, 1);


 mt76_clear(dev, MT_FCE_L2_STUFF, MT_FCE_L2_STUFF_WR_MPDU_LEN_EN);

 eep_val = mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_2);
 switch (FIELD_GET(MT_EE_NIC_CONF_2_XTAL_OPTION, eep_val)) {
 case 0:
  mt76_wr(dev, MT_XO_CTRL7, 0x5c1fee80);
  break;
 case 1:
  mt76_wr(dev, MT_XO_CTRL7, 0x5c1feed0);
  break;
 default:
  break;
 }
}
