
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun4i_usb_phy_data {int phy0_init; int id_det; int vbus_det; int detect; TYPE_1__* cfg; scalar_t__ base; } ;
struct sun4i_usb_phy {scalar_t__ index; scalar_t__ pmu; int clk; int clk2; int reset; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int disc_thresh; scalar_t__ enable_pmu_unk1; scalar_t__ phyctl_offset; } ;


 int ISCR_DPDM_PULLUP_EN ;
 int ISCR_ID_PULLUP_EN ;
 int PHY_CTL_SIDDQ ;
 int PHY_CTL_VBUSVLDEXT ;
 int PHY_DISCON_TH_SEL ;
 int PHY_RES45_CAL_EN ;
 int PHY_TX_AMPLITUDE_TUNE ;
 scalar_t__ REG_PMU_UNK1 ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct sun4i_usb_phy* phy_get_drvdata (struct phy*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int readl (scalar_t__) ;
 int reset_control_deassert (int ) ;
 int sun4i_usb_phy0_update_iscr (struct phy*,int ,int ) ;
 int sun4i_usb_phy_passby (struct sun4i_usb_phy*,int) ;
 int sun4i_usb_phy_write (struct sun4i_usb_phy*,int ,int,int) ;
 scalar_t__ sun50i_h6_phy ;
 scalar_t__ sun8i_a83t_phy ;
 int system_wq ;
 struct sun4i_usb_phy_data* to_sun4i_usb_phy_data (struct sun4i_usb_phy*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4i_usb_phy_init(struct phy *_phy)
{
 struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);
 struct sun4i_usb_phy_data *data = to_sun4i_usb_phy_data(phy);
 int ret;
 u32 val;

 ret = clk_prepare_enable(phy->clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(phy->clk2);
 if (ret) {
  clk_disable_unprepare(phy->clk);
  return ret;
 }

 ret = reset_control_deassert(phy->reset);
 if (ret) {
  clk_disable_unprepare(phy->clk2);
  clk_disable_unprepare(phy->clk);
  return ret;
 }

 if (data->cfg->type == sun8i_a83t_phy ||
     data->cfg->type == sun50i_h6_phy) {
  if (phy->index == 0) {
   val = readl(data->base + data->cfg->phyctl_offset);
   val |= PHY_CTL_VBUSVLDEXT;
   val &= ~PHY_CTL_SIDDQ;
   writel(val, data->base + data->cfg->phyctl_offset);
  }
 } else {
  if (phy->pmu && data->cfg->enable_pmu_unk1) {
   val = readl(phy->pmu + REG_PMU_UNK1);
   writel(val & ~2, phy->pmu + REG_PMU_UNK1);
  }


  if (phy->index == 0)
   sun4i_usb_phy_write(phy, PHY_RES45_CAL_EN, 0x01, 1);


  sun4i_usb_phy_write(phy, PHY_TX_AMPLITUDE_TUNE, 0x14, 5);


  sun4i_usb_phy_write(phy, PHY_DISCON_TH_SEL,
        data->cfg->disc_thresh, 2);
 }

 sun4i_usb_phy_passby(phy, 1);

 if (phy->index == 0) {
  data->phy0_init = 1;


  sun4i_usb_phy0_update_iscr(_phy, 0, ISCR_DPDM_PULLUP_EN);
  sun4i_usb_phy0_update_iscr(_phy, 0, ISCR_ID_PULLUP_EN);


  data->id_det = -1;
  data->vbus_det = -1;
  queue_delayed_work(system_wq, &data->detect, 0);
 }

 return 0;
}
