
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {int wait; int cnt; } ;
struct TYPE_7__ {TYPE_2__ vsync; } ;
struct TYPE_8__ {int wait; int cnt; } ;
struct TYPE_5__ {TYPE_4__ vsync; } ;
struct matrox_fb_info {TYPE_3__ crtc2; TYPE_1__ crtc1; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int M_ICLEAR ;
 int M_STATUS ;
 int matroxfb_crtc1_panpos (struct matrox_fb_info*) ;
 int mga_inl (int ) ;
 int mga_outl (int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t matrox_irq(int irq, void *dev_id)
{
 u_int32_t status;
 int handled = 0;
 struct matrox_fb_info *minfo = dev_id;

 status = mga_inl(M_STATUS);

 if (status & 0x20) {
  mga_outl(M_ICLEAR, 0x20);
  minfo->crtc1.vsync.cnt++;
  matroxfb_crtc1_panpos(minfo);
  wake_up_interruptible(&minfo->crtc1.vsync.wait);
  handled = 1;
 }
 if (status & 0x200) {
  mga_outl(M_ICLEAR, 0x200);
  minfo->crtc2.vsync.cnt++;
  wake_up_interruptible(&minfo->crtc2.vsync.wait);
  handled = 1;
 }
 return IRQ_RETVAL(handled);
}
