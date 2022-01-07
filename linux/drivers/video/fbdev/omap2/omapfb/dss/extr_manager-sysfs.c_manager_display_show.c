
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {struct omap_dss_device* (* get_device ) (struct omap_overlay_manager*) ;} ;
struct omap_dss_device {char* name; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 struct omap_dss_device* stub1 (struct omap_overlay_manager*) ;

__attribute__((used)) static ssize_t manager_display_show(struct omap_overlay_manager *mgr, char *buf)
{
 struct omap_dss_device *dssdev = mgr->get_device(mgr);

 return snprintf(buf, PAGE_SIZE, "%s\n", dssdev ?
   dssdev->name : "<none>");
}
