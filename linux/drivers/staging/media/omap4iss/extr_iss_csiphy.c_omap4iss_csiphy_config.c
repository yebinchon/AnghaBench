
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int entity; } ;
struct TYPE_11__ {int pol; int pos; } ;
struct iss_csiphy_lanes_cfg {TYPE_5__ clk; TYPE_4__* data; } ;
struct TYPE_8__ {struct iss_csiphy_lanes_cfg lanecfg; } ;
struct TYPE_9__ {TYPE_2__ csi2; } ;
struct iss_v4l2_subdevs_group {scalar_t__ interface; TYPE_3__ bus; } ;
struct iss_pipeline {int external_rate; int external_bpp; TYPE_1__* external; } ;
struct iss_device {int syscon; } ;
struct iss_csiphy_dphy_cfg {int tclk_settle; int tclk_miss; int tclk_term; void* ths_settle; void* ths_term; } ;
struct iss_csi2_device {TYPE_6__* phy; } ;
struct TYPE_12__ {int used_data_lanes; unsigned int max_data_lanes; int mutex; struct iss_csiphy_lanes_cfg lanes; struct iss_csiphy_dphy_cfg dphy; } ;
struct TYPE_10__ {int pos; int pol; } ;
struct TYPE_7__ {struct iss_v4l2_subdevs_group* host_priv; } ;


 void* DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 scalar_t__ ISS_INTERFACE_CSI2A_PHY1 ;
 scalar_t__ ISS_INTERFACE_CSI2B_PHY2 ;
 int OMAP4_CAMERARX_CSI21_CAMMODE_MASK ;
 int OMAP4_CAMERARX_CSI21_CTRLCLKEN_MASK ;
 int OMAP4_CAMERARX_CSI21_LANEENABLE_MASK ;
 int OMAP4_CAMERARX_CSI21_LANEENABLE_SHIFT ;
 int OMAP4_CAMERARX_CSI22_CAMMODE_MASK ;
 int OMAP4_CAMERARX_CSI22_CTRLCLKEN_MASK ;
 int OMAP4_CAMERARX_CSI22_LANEENABLE_MASK ;
 int OMAP4_CAMERARX_CSI22_LANEENABLE_SHIFT ;
 int TCLK_MISS ;
 int TCLK_SETTLE ;
 int TCLK_TERM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int,int*) ;
 int regmap_write (int ,int,int) ;
 struct iss_pipeline* to_iss_pipeline (int *) ;
 struct iss_csi2_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int omap4iss_csiphy_config(struct iss_device *iss,
      struct v4l2_subdev *csi2_subdev)
{
 struct iss_csi2_device *csi2 = v4l2_get_subdevdata(csi2_subdev);
 struct iss_pipeline *pipe = to_iss_pipeline(&csi2_subdev->entity);
 struct iss_v4l2_subdevs_group *subdevs = pipe->external->host_priv;
 struct iss_csiphy_dphy_cfg csi2phy;
 int csi2_ddrclk_khz;
 struct iss_csiphy_lanes_cfg *lanes;
 unsigned int used_lanes = 0;
 u32 cam_rx_ctrl;
 unsigned int i;

 lanes = &subdevs->bus.csi2.lanecfg;
 regmap_read(iss->syscon, 0x68, &cam_rx_ctrl);

 if (subdevs->interface == ISS_INTERFACE_CSI2A_PHY1) {
  cam_rx_ctrl &= ~(OMAP4_CAMERARX_CSI21_LANEENABLE_MASK |
    OMAP4_CAMERARX_CSI21_CAMMODE_MASK);


  cam_rx_ctrl |=
   0x1f << OMAP4_CAMERARX_CSI21_LANEENABLE_SHIFT;

  cam_rx_ctrl |= OMAP4_CAMERARX_CSI21_CTRLCLKEN_MASK;
 }

 if (subdevs->interface == ISS_INTERFACE_CSI2B_PHY2) {
  cam_rx_ctrl &= ~(OMAP4_CAMERARX_CSI22_LANEENABLE_MASK |
    OMAP4_CAMERARX_CSI22_CAMMODE_MASK);


  cam_rx_ctrl |=
   0x3 << OMAP4_CAMERARX_CSI22_LANEENABLE_SHIFT;

  cam_rx_ctrl |= OMAP4_CAMERARX_CSI22_CTRLCLKEN_MASK;
 }

 regmap_write(iss->syscon, 0x68, cam_rx_ctrl);


 csi2->phy->used_data_lanes = 0;


 for (i = 0; i < csi2->phy->max_data_lanes; i++) {
  if (lanes->data[i].pos == 0)
   continue;

  if (lanes->data[i].pol > 1 ||
      lanes->data[i].pos > (csi2->phy->max_data_lanes + 1))
   return -EINVAL;

  if (used_lanes & (1 << lanes->data[i].pos))
   return -EINVAL;

  used_lanes |= 1 << lanes->data[i].pos;
  csi2->phy->used_data_lanes++;
 }

 if (lanes->clk.pol > 1 ||
     lanes->clk.pos > (csi2->phy->max_data_lanes + 1))
  return -EINVAL;

 if (lanes->clk.pos == 0 || used_lanes & (1 << lanes->clk.pos))
  return -EINVAL;

 csi2_ddrclk_khz = pipe->external_rate / 1000
  / (2 * csi2->phy->used_data_lanes)
  * pipe->external_bpp;





 csi2phy.ths_term = DIV_ROUND_UP(25 * csi2_ddrclk_khz, 2000000) - 1;
 csi2phy.ths_settle = DIV_ROUND_UP(90 * csi2_ddrclk_khz, 1000000) + 3;
 csi2phy.tclk_term = TCLK_TERM;
 csi2phy.tclk_miss = TCLK_MISS;
 csi2phy.tclk_settle = TCLK_SETTLE;

 mutex_lock(&csi2->phy->mutex);
 csi2->phy->dphy = csi2phy;
 csi2->phy->lanes = *lanes;
 mutex_unlock(&csi2->phy->mutex);

 return 0;
}
