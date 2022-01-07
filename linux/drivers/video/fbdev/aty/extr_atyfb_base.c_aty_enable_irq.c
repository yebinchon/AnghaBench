
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atyfb_par {int int_lock; int irq_flags; int irq; } ;


 int CRTC_INT_CNTL ;
 int CRTC_INT_EN_MASK ;
 int CRTC_VBLANK_INT_AK ;
 int CRTC_VBLANK_INT_EN ;
 int EINVAL ;
 int IRQF_SHARED ;
 int aty_irq ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;
 int clear_bit (int ,int *) ;
 int printk (char*,int) ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct atyfb_par*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int aty_enable_irq(struct atyfb_par *par, int reenable)
{
 u32 int_cntl;

 if (!test_and_set_bit(0, &par->irq_flags)) {
  if (request_irq(par->irq, aty_irq, IRQF_SHARED, "atyfb", par)) {
   clear_bit(0, &par->irq_flags);
   return -EINVAL;
  }
  spin_lock_irq(&par->int_lock);
  int_cntl = aty_ld_le32(CRTC_INT_CNTL, par) & CRTC_INT_EN_MASK;

  aty_st_le32(CRTC_INT_CNTL, int_cntl | CRTC_VBLANK_INT_AK, par);

  aty_st_le32(CRTC_INT_CNTL, int_cntl | CRTC_VBLANK_INT_EN, par);
  spin_unlock_irq(&par->int_lock);
 } else if (reenable) {
  spin_lock_irq(&par->int_lock);
  int_cntl = aty_ld_le32(CRTC_INT_CNTL, par) & CRTC_INT_EN_MASK;
  if (!(int_cntl & CRTC_VBLANK_INT_EN)) {
   printk("atyfb: someone disabled IRQ [%08x]\n",
          int_cntl);

   aty_st_le32(CRTC_INT_CNTL, int_cntl |
        CRTC_VBLANK_INT_EN, par);
  }
  spin_unlock_irq(&par->int_lock);
 }

 return 0;
}
