
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fnic {int fnic_lock; } ;
struct fc_lport {int dummy; } ;


 int fnic_update_mac_locked (struct fnic*,int *) ;
 struct fnic* lport_priv (struct fc_lport*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void fnic_update_mac(struct fc_lport *lport, u8 *new)
{
 struct fnic *fnic = lport_priv(lport);

 spin_lock_irq(&fnic->fnic_lock);
 fnic_update_mac_locked(fnic, new);
 spin_unlock_irq(&fnic->fnic_lock);
}
