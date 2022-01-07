
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay {int (* is_enabled ) (struct omap_overlay*) ;} ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int stub1 (struct omap_overlay*) ;
 int stub2 (struct omap_overlay*) ;

__attribute__((used)) static ssize_t overlay_enabled_show(struct omap_overlay *ovl, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", ovl->is_enabled(ovl));
}
