
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bfad_s {struct bfad_s* trcmod; int list_entry; int pport; struct bfad_s* regdata; int bfad_lock; int bfa; int * bfad_tsk; int inst_no; } ;


 int BFAD_E_STOP ;
 int bfa_detach (int *) ;
 int bfa_sm_send_event (struct bfad_s*,int ) ;
 int bfa_trc (struct bfad_s*,int ) ;
 int bfad_debugfs_exit (int *) ;
 int bfad_hal_mem_release (struct bfad_s*) ;
 int bfad_inst ;
 int bfad_mutex ;
 int bfad_pci_uninit (struct pci_dev*,struct bfad_s*) ;
 int kfree (struct bfad_s*) ;
 int kthread_stop (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bfad_s* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
bfad_pci_remove(struct pci_dev *pdev)
{
 struct bfad_s *bfad = pci_get_drvdata(pdev);
 unsigned long flags;

 bfa_trc(bfad, bfad->inst_no);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (bfad->bfad_tsk != ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  kthread_stop(bfad->bfad_tsk);
 } else {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 }


 bfa_sm_send_event(bfad, BFAD_E_STOP);


 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfa_detach(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 bfad_hal_mem_release(bfad);


 kfree(bfad->regdata);
 bfad_debugfs_exit(&bfad->pport);


 mutex_lock(&bfad_mutex);
 bfad_inst--;
 list_del(&bfad->list_entry);
 mutex_unlock(&bfad_mutex);
 bfad_pci_uninit(pdev, bfad);

 kfree(bfad->trcmod);
 kfree(bfad);
}
