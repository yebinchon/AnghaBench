
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vaddr; } ;
struct TYPE_8__ {int base; TYPE_1__ vbase; } ;
struct TYPE_6__ {int vaddr; } ;
struct TYPE_7__ {int len_maximum; int base; TYPE_2__ vbase; } ;
struct matrox_fb_info {int dead; TYPE_4__ mmio; TYPE_3__ video; int wc_cookie; int fbcon; scalar_t__ usecount; } ;


 int arch_phys_wc_del (int ) ;
 int iounmap (int ) ;
 int kfree (struct matrox_fb_info*) ;
 int matroxfb_g450_shutdown (struct matrox_fb_info*) ;
 int matroxfb_unregister_device (struct matrox_fb_info*) ;
 int release_mem_region (int ,int) ;
 int unregister_framebuffer (int *) ;

__attribute__((used)) static void matroxfb_remove(struct matrox_fb_info *minfo, int dummy)
{
 minfo->dead = 1;
 if (minfo->usecount) {

  return;
 }
 matroxfb_unregister_device(minfo);
 unregister_framebuffer(&minfo->fbcon);
 matroxfb_g450_shutdown(minfo);
 arch_phys_wc_del(minfo->wc_cookie);
 iounmap(minfo->mmio.vbase.vaddr);
 iounmap(minfo->video.vbase.vaddr);
 release_mem_region(minfo->video.base, minfo->video.len_maximum);
 release_mem_region(minfo->mmio.base, 16384);
 kfree(minfo);
}
