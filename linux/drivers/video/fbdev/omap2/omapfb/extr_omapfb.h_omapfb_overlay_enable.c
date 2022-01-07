
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay {int (* enable ) (struct omap_overlay*) ;int (* disable ) (struct omap_overlay*) ;} ;


 int stub1 (struct omap_overlay*) ;
 int stub2 (struct omap_overlay*) ;

__attribute__((used)) static inline int omapfb_overlay_enable(struct omap_overlay *ovl,
  int enable)
{
 if (enable)
  return ovl->enable(ovl);
 else
  return ovl->disable(ovl);
}
