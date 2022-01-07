
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfb_info {int ddc_adapter; scalar_t__ ddc_registered; int fb; } ;


 int cyber2000fb_i2c_unregister (struct cfb_info*) ;
 int i2c_del_adapter (int *) ;
 int unregister_framebuffer (int *) ;

__attribute__((used)) static void cyberpro_common_remove(struct cfb_info *cfb)
{
 unregister_framebuffer(&cfb->fb);




 cyber2000fb_i2c_unregister(cfb);
}
