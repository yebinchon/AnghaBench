
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smtcfb_info {TYPE_2__* fb; } ;
struct TYPE_6__ {scalar_t__ lfb_width; int lfb_depth; int lfb_height; } ;
struct TYPE_4__ {scalar_t__ xres; int bits_per_pixel; int yres; } ;
struct TYPE_5__ {TYPE_1__ var; } ;


 int SCREEN_BPP ;
 scalar_t__ SCREEN_X_RES ;
 int SCREEN_Y_RES_NETBOOK ;
 int SCREEN_Y_RES_PC ;
 int big_pixel_depth (int ,int ) ;
 TYPE_3__ smtc_scr_info ;

__attribute__((used)) static void sm7xx_resolution_probe(struct smtcfb_info *sfb)
{

 if (smtc_scr_info.lfb_width != 0) {
  sfb->fb->var.xres = smtc_scr_info.lfb_width;
  sfb->fb->var.yres = smtc_scr_info.lfb_height;
  sfb->fb->var.bits_per_pixel = smtc_scr_info.lfb_depth;
  goto final;
 }







 sfb->fb->var.xres = SCREEN_X_RES;
 sfb->fb->var.yres = SCREEN_Y_RES_PC;
 sfb->fb->var.bits_per_pixel = SCREEN_BPP;
final:
 big_pixel_depth(sfb->fb->var.bits_per_pixel, smtc_scr_info.lfb_depth);
}
