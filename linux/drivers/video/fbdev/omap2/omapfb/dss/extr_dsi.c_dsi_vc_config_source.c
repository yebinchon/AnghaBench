
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* vc; } ;
typedef enum dsi_vc_source { ____Placeholder_dsi_vc_source } dsi_vc_source ;
struct TYPE_2__ {int source; } ;


 int DSI_VC_CTRL (int) ;
 int DSI_VC_SOURCE_VP ;
 int DSSDBG (char*,int) ;
 int DSSERR (char*,int) ;
 int EIO ;
 int FEAT_DSI_DCS_CMD_CONFIG_VC ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_sync_vc (struct platform_device*,int) ;
 int dsi_vc_enable (struct platform_device*,int,int) ;
 scalar_t__ dss_has_feature (int ) ;
 scalar_t__ wait_for_bit_change (struct platform_device*,int ,int,int ) ;

__attribute__((used)) static int dsi_vc_config_source(struct platform_device *dsidev, int channel,
  enum dsi_vc_source source)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 if (dsi->vc[channel].source == source)
  return 0;

 DSSDBG("Source config of virtual channel %d", channel);

 dsi_sync_vc(dsidev, channel);

 dsi_vc_enable(dsidev, channel, 0);


 if (wait_for_bit_change(dsidev, DSI_VC_CTRL(channel), 15, 0) != 0) {
  DSSERR("vc(%d) busy when trying to config for VP\n", channel);
  return -EIO;
 }


 REG_FLD_MOD(dsidev, DSI_VC_CTRL(channel), source, 1, 1);


 if (dss_has_feature(FEAT_DSI_DCS_CMD_CONFIG_VC)) {
  bool enable = source == DSI_VC_SOURCE_VP;
  REG_FLD_MOD(dsidev, DSI_VC_CTRL(channel), enable, 30, 30);
 }

 dsi_vc_enable(dsidev, channel, 1);

 dsi->vc[channel].source = source;

 return 0;
}
