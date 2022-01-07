
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {int num_lanes_supported; TYPE_1__* lanes; } ;
struct TYPE_2__ {unsigned int polarity; } ;


 int DSI_DSIPHY_CFG10 ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static void dsi_cio_enable_lane_override(struct platform_device *dsidev,
  unsigned mask_p, unsigned mask_n)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 int i;
 u32 l;
 u8 lptxscp_start = dsi->num_lanes_supported == 3 ? 22 : 26;

 l = 0;

 for (i = 0; i < dsi->num_lanes_supported; ++i) {
  unsigned p = dsi->lanes[i].polarity;

  if (mask_p & (1 << i))
   l |= 1 << (i * 2 + (p ? 0 : 1));

  if (mask_n & (1 << i))
   l |= 1 << (i * 2 + (p ? 1 : 0));
 }
 REG_FLD_MOD(dsidev, DSI_DSIPHY_CFG10, l, lptxscp_start, 17);




 REG_FLD_MOD(dsidev, DSI_DSIPHY_CFG10, 1, 27, 27);
}
