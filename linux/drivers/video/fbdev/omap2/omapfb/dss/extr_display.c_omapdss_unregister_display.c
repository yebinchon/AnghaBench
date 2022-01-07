
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int panel_list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int panel_list_mutex ;

void omapdss_unregister_display(struct omap_dss_device *dssdev)
{
 mutex_lock(&panel_list_mutex);
 list_del(&dssdev->panel_list);
 mutex_unlock(&panel_list_mutex);
}
