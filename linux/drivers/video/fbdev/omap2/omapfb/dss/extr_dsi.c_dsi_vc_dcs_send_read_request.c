
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dummy; } ;
struct dsi_data {scalar_t__ debug_read; } ;


 int DSSDBG (char*,int,int ) ;
 int DSSERR (char*,int,int ) ;
 int MIPI_DSI_DCS_READ ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_vc_send_short (struct platform_device*,int,int ,int ,int ) ;

__attribute__((used)) static int dsi_vc_dcs_send_read_request(struct platform_device *dsidev,
  int channel, u8 dcs_cmd)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 int r;

 if (dsi->debug_read)
  DSSDBG("dsi_vc_dcs_send_read_request(ch%d, dcs_cmd %x)\n",
   channel, dcs_cmd);

 r = dsi_vc_send_short(dsidev, channel, MIPI_DSI_DCS_READ, dcs_cmd, 0);
 if (r) {
  DSSERR("dsi_vc_dcs_send_read_request(ch %d, cmd 0x%02x)"
   " failed\n", channel, dcs_cmd);
  return r;
 }

 return 0;
}
