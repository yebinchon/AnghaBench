
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct matroxfb_dh_fb_info {struct matrox_fb_info* primary_dev; } ;
struct TYPE_3__ {int ctl; } ;
struct TYPE_4__ {TYPE_1__ crtc2; } ;
struct matrox_fb_info {TYPE_2__ hw; } ;


 int mga_outl (int,int) ;

__attribute__((used)) static void matroxfb_dh_disable(struct matroxfb_dh_fb_info* m2info) {
 struct matrox_fb_info *minfo = m2info->primary_dev;

 mga_outl(0x3C10, 0x00000004);
 minfo->hw.crtc2.ctl = 0x00000004;
}
