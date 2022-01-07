
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT_CMB_CTRL ;
 int MT_CMB_CTRL_PLL_LD ;
 int MT_CMB_CTRL_XTAL_RDY ;
 int MT_WLAN_FUN_CTRL ;
 int MT_WLAN_FUN_CTRL_WLAN_CLK_EN ;
 int MT_WLAN_FUN_CTRL_WLAN_EN ;
 int dev_err (int ,char*) ;
 int mt76_poll (struct mt76x02_dev*,int ,int,int,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void
mt76x0_set_wlan_state(struct mt76x02_dev *dev, u32 val, bool enable)
{
 u32 mask = MT_CMB_CTRL_XTAL_RDY | MT_CMB_CTRL_PLL_LD;







 if (enable)
  val |= (MT_WLAN_FUN_CTRL_WLAN_EN |
   MT_WLAN_FUN_CTRL_WLAN_CLK_EN);
 else
  val &= ~(MT_WLAN_FUN_CTRL_WLAN_EN);

 mt76_wr(dev, MT_WLAN_FUN_CTRL, val);
 udelay(20);





 if (enable && !mt76_poll(dev, MT_CMB_CTRL, mask, mask, 2000))
  dev_err(dev->mt76.dev, "PLL and XTAL check failed\n");
}
