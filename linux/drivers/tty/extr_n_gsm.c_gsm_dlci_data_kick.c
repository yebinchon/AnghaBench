
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gsm_dlci {TYPE_1__* gsm; scalar_t__ net; scalar_t__ constipated; } ;
struct TYPE_4__ {scalar_t__ tx_bytes; int tx_lock; } ;


 scalar_t__ TX_THRESH_LO ;
 int gsm_dlci_data_output (TYPE_1__*,struct gsm_dlci*) ;
 int gsm_dlci_data_output_framed (TYPE_1__*,struct gsm_dlci*) ;
 int gsm_dlci_data_sweep (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gsm_dlci_data_kick(struct gsm_dlci *dlci)
{
 unsigned long flags;
 int sweep;

 if (dlci->constipated)
  return;

 spin_lock_irqsave(&dlci->gsm->tx_lock, flags);

 sweep = (dlci->gsm->tx_bytes < TX_THRESH_LO);
 if (dlci->gsm->tx_bytes == 0) {
  if (dlci->net)
   gsm_dlci_data_output_framed(dlci->gsm, dlci);
  else
   gsm_dlci_data_output(dlci->gsm, dlci);
 }
 if (sweep)
  gsm_dlci_data_sweep(dlci->gsm);
 spin_unlock_irqrestore(&dlci->gsm->tx_lock, flags);
}
