
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {int trans_enabled; } ;
struct omap_overlay_manager {int (* get_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;} ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int stub1 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;

__attribute__((used)) static ssize_t manager_trans_key_enabled_show(struct omap_overlay_manager *mgr,
           char *buf)
{
 struct omap_overlay_manager_info info;

 mgr->get_manager_info(mgr, &info);

 return snprintf(buf, PAGE_SIZE, "%d\n", info.trans_enabled);
}
