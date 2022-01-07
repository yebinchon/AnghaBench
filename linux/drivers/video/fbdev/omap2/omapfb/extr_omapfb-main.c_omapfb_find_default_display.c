
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb2_device {int num_displays; TYPE_2__* displays; } ;
struct omap_dss_device {TYPE_1__* dev; scalar_t__ alias; scalar_t__ name; } ;
struct TYPE_4__ {struct omap_dss_device* dssdev; } ;
struct TYPE_3__ {int * of_node; } ;


 int of_alias_get_id (int *,char*) ;
 char* omapdss_get_default_display_name () ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static struct omap_dss_device *
omapfb_find_default_display(struct omapfb2_device *fbdev)
{
 const char *def_name;
 int i;






 def_name = omapdss_get_default_display_name();

 if (def_name) {
  for (i = 0; i < fbdev->num_displays; ++i) {
   struct omap_dss_device *dssdev;

   dssdev = fbdev->displays[i].dssdev;

   if (dssdev->name && strcmp(def_name, dssdev->name) == 0)
    return dssdev;

   if (strcmp(def_name, dssdev->alias) == 0)
    return dssdev;
  }


  return ((void*)0);
 }


 for (i = 0; i < fbdev->num_displays; ++i) {
  struct omap_dss_device *dssdev;
  int id;

  dssdev = fbdev->displays[i].dssdev;

  if (dssdev->dev->of_node == ((void*)0))
   continue;

  id = of_alias_get_id(dssdev->dev->of_node, "display");
  if (id == 0)
   return dssdev;
 }


 return fbdev->displays[0].dssdev;
}
