
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct omap_overlay_info {int global_alpha; } ;
struct omap_overlay {int caps; int (* set_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;TYPE_1__* manager; int (* get_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;} ;
typedef int ssize_t ;
struct TYPE_2__ {int (* apply ) (TYPE_1__*) ;} ;


 int ENODEV ;
 int OMAP_DSS_OVL_CAP_GLOBAL_ALPHA ;
 int kstrtou8 (char const*,int ,int *) ;
 int stub1 (struct omap_overlay*,struct omap_overlay_info*) ;
 int stub2 (struct omap_overlay*,struct omap_overlay_info*) ;
 int stub3 (TYPE_1__*) ;

__attribute__((used)) static ssize_t overlay_global_alpha_store(struct omap_overlay *ovl,
  const char *buf, size_t size)
{
 int r;
 u8 alpha;
 struct omap_overlay_info info;

 if ((ovl->caps & OMAP_DSS_OVL_CAP_GLOBAL_ALPHA) == 0)
  return -ENODEV;

 r = kstrtou8(buf, 0, &alpha);
 if (r)
  return r;

 ovl->get_overlay_info(ovl, &info);

 info.global_alpha = alpha;

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
