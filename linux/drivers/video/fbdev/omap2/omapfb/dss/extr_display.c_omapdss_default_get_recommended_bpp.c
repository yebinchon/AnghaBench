
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int dsi_pix_fmt; } ;
struct TYPE_7__ {int pixel_size; } ;
struct TYPE_5__ {int data_lines; } ;
struct TYPE_6__ {TYPE_1__ dpi; } ;
struct omap_dss_device {int type; TYPE_4__ panel; TYPE_3__ ctrl; TYPE_2__ phy; } ;


 int BUG () ;







 int dsi_get_pixel_size (int ) ;

int omapdss_default_get_recommended_bpp(struct omap_dss_device *dssdev)
{
 switch (dssdev->type) {
 case 133:
  if (dssdev->phy.dpi.data_lines == 24)
   return 24;
  else
   return 16;

 case 134:
  if (dssdev->ctrl.pixel_size == 24)
   return 24;
  else
   return 16;
 case 132:
  if (dsi_get_pixel_size(dssdev->panel.dsi_pix_fmt) > 16)
   return 24;
  else
   return 16;
 case 128:
 case 129:
 case 130:
 case 131:
  return 24;
 default:
  BUG();
  return 0;
 }
}
