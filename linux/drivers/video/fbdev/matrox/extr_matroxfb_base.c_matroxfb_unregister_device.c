
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matroxfb_driver {int (* remove ) (struct matrox_fb_info*,int ) ;} ;
struct matrox_fb_info {int drivers_count; int * drivers_data; struct matroxfb_driver** drivers; int next_fb; } ;


 int list_del (int *) ;
 int stub1 (struct matrox_fb_info*,int ) ;

__attribute__((used)) static void matroxfb_unregister_device(struct matrox_fb_info* minfo) {
 int i;

 list_del(&minfo->next_fb);
 for (i = 0; i < minfo->drivers_count; i++) {
  struct matroxfb_driver* drv = minfo->drivers[i];

  if (drv && drv->remove)
   drv->remove(minfo, minfo->drivers_data[i]);
 }
}
