
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay {int (* enable ) (struct omap_overlay*) ;int (* disable ) (struct omap_overlay*) ;} ;
typedef int ssize_t ;


 int strtobool (char const*,int*) ;
 int stub1 (struct omap_overlay*) ;
 int stub2 (struct omap_overlay*) ;

__attribute__((used)) static ssize_t overlay_enabled_store(struct omap_overlay *ovl, const char *buf,
  size_t size)
{
 int r;
 bool enable;

 r = strtobool(buf, &enable);
 if (r)
  return r;

 if (enable)
  r = ovl->enable(ovl);
 else
  r = ovl->disable(ovl);

 if (r)
  return r;

 return size;
}
