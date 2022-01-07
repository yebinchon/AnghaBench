
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cnt; } ;
struct TYPE_8__ {TYPE_3__ vsync; } ;
struct TYPE_5__ {scalar_t__ yres; } ;
struct TYPE_6__ {TYPE_1__ var; } ;
struct matrox_fb_info {TYPE_4__ crtc1; int irq_flags; TYPE_2__ fbcon; } ;
struct fb_vblank {int flags; scalar_t__ vcount; int count; } ;


 int FB_VBLANK_HAVE_COUNT ;
 int FB_VBLANK_HAVE_HBLANK ;
 int FB_VBLANK_HAVE_VBLANK ;
 int FB_VBLANK_HAVE_VCOUNT ;
 int FB_VBLANK_HAVE_VSYNC ;
 int FB_VBLANK_HBLANKING ;
 int FB_VBLANK_VBLANKING ;
 int FB_VBLANK_VSYNCING ;
 int M_INSTS1 ;
 int M_VCOUNT ;
 int matroxfb_enable_irq (struct matrox_fb_info*,int ) ;
 int memset (struct fb_vblank*,int ,int) ;
 unsigned int mga_inb (int ) ;
 scalar_t__ mga_inl (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int matroxfb_get_vblank(struct matrox_fb_info *minfo,
          struct fb_vblank *vblank)
{
 unsigned int sts1;

 matroxfb_enable_irq(minfo, 0);
 memset(vblank, 0, sizeof(*vblank));
 vblank->flags = FB_VBLANK_HAVE_VCOUNT | FB_VBLANK_HAVE_VSYNC |
   FB_VBLANK_HAVE_VBLANK | FB_VBLANK_HAVE_HBLANK;
 sts1 = mga_inb(M_INSTS1);
 vblank->vcount = mga_inl(M_VCOUNT);



 if (sts1 & 1)
  vblank->flags |= FB_VBLANK_HBLANKING;
 if (sts1 & 8)
  vblank->flags |= FB_VBLANK_VSYNCING;
 if (vblank->vcount >= minfo->fbcon.var.yres)
  vblank->flags |= FB_VBLANK_VBLANKING;
 if (test_bit(0, &minfo->irq_flags)) {
  vblank->flags |= FB_VBLANK_HAVE_COUNT;


  vblank->count = minfo->crtc1.vsync.cnt;
 }
 return 0;
}
