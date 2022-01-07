
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_aux_drv {struct fb_monspecs* data; } ;
struct fb_monspecs {int modedb; } ;


 int fb_destroy_modedb (int ) ;

__attribute__((used)) static void cleanup(struct via_aux_drv *drv)
{
 struct fb_monspecs *spec = drv->data;

 if (spec)
  fb_destroy_modedb(spec->modedb);
}
