
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_info {int width; int height; } ;
struct omap_overlay {int (* get_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;} ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int,int) ;
 int stub1 (struct omap_overlay*,struct omap_overlay_info*) ;

__attribute__((used)) static ssize_t overlay_input_size_show(struct omap_overlay *ovl, char *buf)
{
 struct omap_overlay_info info;

 ovl->get_overlay_info(ovl, &info);

 return snprintf(buf, PAGE_SIZE, "%d,%d\n",
   info.width, info.height);
}
