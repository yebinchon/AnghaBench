
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_dss_device {int dummy; } ;


 int DSS_DSI_CONTENT_DCS ;
 int dsi_vc_write_common (struct omap_dss_device*,int,int *,int,int ) ;

__attribute__((used)) static int dsi_vc_dcs_write(struct omap_dss_device *dssdev, int channel, u8 *data,
  int len)
{
 return dsi_vc_write_common(dssdev, channel, data, len,
   DSS_DSI_CONTENT_DCS);
}
