
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {scalar_t__ debug_read; scalar_t__ debug_write; } ;


 int DSI_VC_CTRL (int) ;
 int DSSDBG (char*,int) ;
 int DSSERR (char*) ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 scalar_t__ REG_GET (struct platform_device*,int ,int,int) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_vc_flush_receive_data (struct platform_device*,int) ;

__attribute__((used)) static int dsi_vc_send_bta(struct platform_device *dsidev, int channel)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 if (dsi->debug_write || dsi->debug_read)
  DSSDBG("dsi_vc_send_bta %d\n", channel);

 WARN_ON(!dsi_bus_is_locked(dsidev));


 if (REG_GET(dsidev, DSI_VC_CTRL(channel), 20, 20)) {
  DSSERR("rx fifo not empty when sending BTA, dumping data:\n");
  dsi_vc_flush_receive_data(dsidev, channel);
 }

 REG_FLD_MOD(dsidev, DSI_VC_CTRL(channel), 1, 6, 6);


 dsi_read_reg(dsidev, DSI_VC_CTRL(channel));

 return 0;
}
