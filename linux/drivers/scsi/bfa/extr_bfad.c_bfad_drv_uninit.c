
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_flags; int bfa; int hal_tmo; int comp; int bfad_lock; } ;


 int BFAD_DRV_INIT_DONE ;
 int bfa_detach (int *) ;
 int bfa_iocfc_stop (int *) ;
 int bfa_isr_disable (int *) ;
 int bfad_hal_mem_release (struct bfad_s*) ;
 int bfad_remove_intr (struct bfad_s*) ;
 int del_timer_sync (int *) ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

void
bfad_drv_uninit(struct bfad_s *bfad)
{
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 init_completion(&bfad->comp);
 bfa_iocfc_stop(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 wait_for_completion(&bfad->comp);

 del_timer_sync(&bfad->hal_tmo);
 bfa_isr_disable(&bfad->bfa);
 bfa_detach(&bfad->bfa);
 bfad_remove_intr(bfad);
 bfad_hal_mem_release(bfad);

 bfad->bfad_flags &= ~BFAD_DRV_INIT_DONE;
}
