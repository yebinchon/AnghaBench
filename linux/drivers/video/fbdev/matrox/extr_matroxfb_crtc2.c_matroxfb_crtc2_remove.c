
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int kfree (void*) ;
 int matroxfb_dh_deregisterfb (void*) ;

__attribute__((used)) static void matroxfb_crtc2_remove(struct matrox_fb_info* minfo, void* crtc2) {
 matroxfb_dh_deregisterfb(crtc2);
 kfree(crtc2);
}
