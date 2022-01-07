
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {int source; } ;


 int DSI_VC_CTRL (int) ;
 int DSI_VC_SOURCE_L4 ;
 int DSSDBG (char*,int) ;
 int DSSERR (char*,int) ;
 int FEAT_DSI_VC_OCP_WIDTH ;
 scalar_t__ FLD_GET (int ,int,int) ;
 int FLD_MOD (int ,int,int,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_write_reg (struct platform_device*,int ,int ) ;
 scalar_t__ dss_has_feature (int ) ;

__attribute__((used)) static void dsi_vc_initial_config(struct platform_device *dsidev, int channel)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 u32 r;

 DSSDBG("Initial config of virtual channel %d", channel);

 r = dsi_read_reg(dsidev, DSI_VC_CTRL(channel));

 if (FLD_GET(r, 15, 15))
  DSSERR("VC(%d) busy when trying to configure it!\n",
    channel);

 r = FLD_MOD(r, 0, 1, 1);
 r = FLD_MOD(r, 0, 2, 2);
 r = FLD_MOD(r, 0, 3, 3);
 r = FLD_MOD(r, 0, 4, 4);
 r = FLD_MOD(r, 1, 7, 7);
 r = FLD_MOD(r, 1, 8, 8);
 r = FLD_MOD(r, 0, 9, 9);
 if (dss_has_feature(FEAT_DSI_VC_OCP_WIDTH))
  r = FLD_MOD(r, 3, 11, 10);

 r = FLD_MOD(r, 4, 29, 27);
 r = FLD_MOD(r, 4, 23, 21);

 dsi_write_reg(dsidev, DSI_VC_CTRL(channel), r);

 dsi->vc[channel].source = DSI_VC_SOURCE_L4;
}
