
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_driver {int * get_timings; int * get_recommended_bpp; int * get_resolution; } ;
struct omap_dss_device {int panel_list; int * alias; int * name; TYPE_1__* dev; struct omap_dss_driver* driver; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;


 int disp_num_counter ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_alias_get_id (scalar_t__,char*) ;
 int of_property_read_string (scalar_t__,char*,int **) ;
 int * omapdss_default_get_recommended_bpp ;
 int * omapdss_default_get_resolution ;
 int * omapdss_default_get_timings ;
 int panel_list ;
 int panel_list_mutex ;
 int snprintf (int *,int,char*,int) ;

int omapdss_register_display(struct omap_dss_device *dssdev)
{
 struct omap_dss_driver *drv = dssdev->driver;
 int id;







 if (dssdev->dev->of_node) {
  id = of_alias_get_id(dssdev->dev->of_node, "display");

  if (id < 0)
   id = disp_num_counter++;
 } else {
  id = disp_num_counter++;
 }

 snprintf(dssdev->alias, sizeof(dssdev->alias), "display%d", id);


 if (dssdev->dev->of_node)
  of_property_read_string(dssdev->dev->of_node, "label",
   &dssdev->name);

 if (dssdev->name == ((void*)0))
  dssdev->name = dssdev->alias;

 if (drv && drv->get_resolution == ((void*)0))
  drv->get_resolution = omapdss_default_get_resolution;
 if (drv && drv->get_recommended_bpp == ((void*)0))
  drv->get_recommended_bpp = omapdss_default_get_recommended_bpp;
 if (drv && drv->get_timings == ((void*)0))
  drv->get_timings = omapdss_default_get_timings;

 mutex_lock(&panel_list_mutex);
 list_add_tail(&dssdev->panel_list, &panel_list);
 mutex_unlock(&panel_list_mutex);
 return 0;
}
