
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_EXT_CCA_CFG ;
 int MT_FCE_L2_STUFF ;
 int MT_FCE_L2_STUFF_WR_MPDU_LEN_EN ;
 int MT_MAC_SYS_CTRL ;
 int MT_WMM_CTRL ;
 int RANDOM_WRITE (struct mt76x02_dev*,int ) ;
 int common_mac_reg_table ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_rmw (struct mt76x02_dev*,int ,int,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;
 int mt76x0_mac_reg_table ;

__attribute__((used)) static void mt76x0_init_mac_registers(struct mt76x02_dev *dev)
{
 RANDOM_WRITE(dev, common_mac_reg_table);


 RANDOM_WRITE(dev, mt76x0_mac_reg_table);


 mt76_clear(dev, MT_MAC_SYS_CTRL, 0x3);


 mt76_set(dev, MT_EXT_CCA_CFG, 0xf000);

 mt76_clear(dev, MT_FCE_L2_STUFF, MT_FCE_L2_STUFF_WR_MPDU_LEN_EN);
 mt76_rmw(dev, MT_WMM_CTRL, 0x3ff, 0x201);
}
