
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;


 int MIPI_DSI_NULL_PACKET ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 int dsi_vc_send_long (struct platform_device*,int,int ,int *,int ,int ) ;

__attribute__((used)) static int dsi_vc_send_null(struct omap_dss_device *dssdev, int channel)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);

 return dsi_vc_send_long(dsidev, channel, MIPI_DSI_NULL_PACKET, ((void*)0),
  0, 0);
}
