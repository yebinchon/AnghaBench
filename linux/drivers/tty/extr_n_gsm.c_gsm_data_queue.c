
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gsm_msg {int dummy; } ;
struct gsm_dlci {TYPE_1__* gsm; } ;
struct TYPE_2__ {int tx_lock; } ;


 int __gsm_data_queue (struct gsm_dlci*,struct gsm_msg*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gsm_data_queue(struct gsm_dlci *dlci, struct gsm_msg *msg)
{
 unsigned long flags;
 spin_lock_irqsave(&dlci->gsm->tx_lock, flags);
 __gsm_data_queue(dlci, msg);
 spin_unlock_irqrestore(&dlci->gsm->tx_lock, flags);
}
