
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {int dummy; } ;
struct csio_hw {int lock; } ;
struct Scsi_Host {int dummy; } ;


 int csio_evtq_flush (struct csio_hw*) ;
 struct Scsi_Host* csio_ln_to_shost (struct csio_lnode*) ;
 int csio_lnode_exit (struct csio_lnode*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int fc_remove_host (struct Scsi_Host*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
csio_shost_exit(struct csio_lnode *ln)
{
 struct Scsi_Host *shost = csio_ln_to_shost(ln);
 struct csio_hw *hw = csio_lnode_to_hw(ln);


 fc_remove_host(shost);


 scsi_remove_host(shost);




 spin_lock_irq(&hw->lock);
 csio_evtq_flush(hw);
 spin_unlock_irq(&hw->lock);

 csio_lnode_exit(ln);
 scsi_host_put(shost);
}
