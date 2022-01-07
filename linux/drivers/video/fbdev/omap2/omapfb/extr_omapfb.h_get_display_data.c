
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_display_data {struct omap_dss_device* dssdev; } ;
struct omapfb2_device {int num_displays; struct omapfb_display_data* displays; } ;
struct omap_dss_device {int dummy; } ;


 int BUG () ;

__attribute__((used)) static inline struct omapfb_display_data *get_display_data(
  struct omapfb2_device *fbdev, struct omap_dss_device *dssdev)
{
 int i;

 for (i = 0; i < fbdev->num_displays; ++i)
  if (fbdev->displays[i].dssdev == dssdev)
   return &fbdev->displays[i];


 BUG();
 return ((void*)0);
}
