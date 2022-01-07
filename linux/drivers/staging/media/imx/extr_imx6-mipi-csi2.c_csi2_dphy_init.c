
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_ctrl {int* qmenu_int; size_t val; } ;
struct csi2_dev {TYPE_1__* src_sd; } ;
struct TYPE_2__ {int ctrl_handler; } ;


 int CSI2_DEFAULT_MAX_MBPS ;
 int DIV_ROUND_UP_ULL (int,int ) ;
 int USEC_PER_SEC ;
 int V4L2_CID_LINK_FREQ ;
 int dw_mipi_csi2_phy_write (struct csi2_dev*,int,int) ;
 int max_mbps_to_hsfreqrange_sel (int ) ;
 struct v4l2_ctrl* v4l2_ctrl_find (int ,int ) ;

__attribute__((used)) static int csi2_dphy_init(struct csi2_dev *csi2)
{
 struct v4l2_ctrl *ctrl;
 u32 mbps_per_lane;
 int sel;

 ctrl = v4l2_ctrl_find(csi2->src_sd->ctrl_handler,
         V4L2_CID_LINK_FREQ);
 if (!ctrl)
  mbps_per_lane = CSI2_DEFAULT_MAX_MBPS;
 else
  mbps_per_lane = DIV_ROUND_UP_ULL(2 * ctrl->qmenu_int[ctrl->val],
       USEC_PER_SEC);

 sel = max_mbps_to_hsfreqrange_sel(mbps_per_lane);
 if (sel < 0)
  return sel;

 dw_mipi_csi2_phy_write(csi2, 0x44, sel);

 return 0;
}
