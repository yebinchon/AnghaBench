
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dev; int state; } ;


 int MT7601U_STATE_WLAN_RUNNING ;
 int MT_CMB_CTRL ;
 int MT_CMB_CTRL_PLL_LD ;
 int MT_CMB_CTRL_XTAL_RDY ;
 int MT_WLAN_FUN_CTRL ;
 int MT_WLAN_FUN_CTRL_WLAN_CLK_EN ;
 int MT_WLAN_FUN_CTRL_WLAN_EN ;
 int clear_bit (int ,int *) ;
 int dev_err (int ,char*) ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int set_bit (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static void
mt7601u_set_wlan_state(struct mt7601u_dev *dev, u32 val, bool enable)
{
 int i;







 if (enable)
  val |= (MT_WLAN_FUN_CTRL_WLAN_EN |
   MT_WLAN_FUN_CTRL_WLAN_CLK_EN);
 else
  val &= ~(MT_WLAN_FUN_CTRL_WLAN_EN);

 mt7601u_wr(dev, MT_WLAN_FUN_CTRL, val);
 udelay(20);

 if (enable) {
  set_bit(MT7601U_STATE_WLAN_RUNNING, &dev->state);
 } else {
  clear_bit(MT7601U_STATE_WLAN_RUNNING, &dev->state);
  return;
 }

 for (i = 200; i; i--) {
  val = mt7601u_rr(dev, MT_CMB_CTRL);

  if (val & MT_CMB_CTRL_XTAL_RDY && val & MT_CMB_CTRL_PLL_LD)
   break;

  udelay(20);
 }





 if (!i)
  dev_err(dev->dev, "Error: PLL and XTAL check failed!\n");
}
