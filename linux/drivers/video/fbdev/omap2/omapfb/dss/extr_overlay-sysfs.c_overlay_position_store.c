
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_info {void* pos_y; void* pos_x; } ;
struct omap_overlay {int (* set_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;TYPE_1__* manager; int (* get_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;} ;
typedef int ssize_t ;
struct TYPE_2__ {int (* apply ) (TYPE_1__*) ;} ;


 int EINVAL ;
 void* simple_strtoul (char const*,char**,int) ;
 int stub1 (struct omap_overlay*,struct omap_overlay_info*) ;
 int stub2 (struct omap_overlay*,struct omap_overlay_info*) ;
 int stub3 (TYPE_1__*) ;

__attribute__((used)) static ssize_t overlay_position_store(struct omap_overlay *ovl,
  const char *buf, size_t size)
{
 int r;
 char *last;
 struct omap_overlay_info info;

 ovl->get_overlay_info(ovl, &info);

 info.pos_x = simple_strtoul(buf, &last, 10);
 ++last;
 if (last - buf >= size)
  return -EINVAL;

 info.pos_y = simple_strtoul(last, &last, 10);

 r = ovl->set_overlay_info(ovl, &info);
 if (r)
  return r;

 if (ovl->manager) {
  r = ovl->manager->apply(ovl->manager);
  if (r)
   return r;
 }

 return size;
}
