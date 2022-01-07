
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;


 int MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 int dsi_vc_send_short (struct platform_device*,int,int ,int ,int ) ;

__attribute__((used)) static int dsi_vc_set_max_rx_packet_size(struct omap_dss_device *dssdev, int channel,
  u16 len)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);

 return dsi_vc_send_short(dsidev, channel,
   MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE, len, 0);
}
