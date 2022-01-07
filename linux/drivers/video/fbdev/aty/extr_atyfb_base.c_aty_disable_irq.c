
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int off_pitch; } ;
struct TYPE_4__ {scalar_t__ pan_display; } ;
struct atyfb_par {int irq; int int_lock; TYPE_1__ crtc; TYPE_2__ vblank; int irq_flags; } ;


 int CRTC_INT_CNTL ;
 int CRTC_INT_EN_MASK ;
 int CRTC_OFF_PITCH ;
 int CRTC_VBLANK_INT_EN ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;
 int free_irq (int ,struct atyfb_par*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int aty_disable_irq(struct atyfb_par *par)
{
 u32 int_cntl;

 if (test_and_clear_bit(0, &par->irq_flags)) {
  if (par->vblank.pan_display) {
   par->vblank.pan_display = 0;
   aty_st_le32(CRTC_OFF_PITCH, par->crtc.off_pitch, par);
  }
  spin_lock_irq(&par->int_lock);
  int_cntl = aty_ld_le32(CRTC_INT_CNTL, par) & CRTC_INT_EN_MASK;

  aty_st_le32(CRTC_INT_CNTL, int_cntl & ~CRTC_VBLANK_INT_EN, par);
  spin_unlock_irq(&par->int_lock);
  free_irq(par->irq, par);
 }

 return 0;
}
