
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {scalar_t__ vport_state; scalar_t__ dd_data; } ;
struct csio_lnode {int dummy; } ;
struct csio_hw {int lock; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ FC_VPORT_DISABLED ;
 int csio_fcoe_free_vnp (struct csio_hw*,struct csio_lnode*) ;
 int csio_hw_to_scsim (struct csio_hw*) ;
 int csio_is_hw_removing (struct csio_hw*) ;
 struct Scsi_Host* csio_ln_to_shost (struct csio_lnode*) ;
 int csio_lnode_close (struct csio_lnode*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_scsim_cleanup_io_lnode (int ,struct csio_lnode*) ;
 int csio_shost_exit (struct csio_lnode*) ;
 int scsi_block_requests (struct Scsi_Host*) ;
 int scsi_unblock_requests (struct Scsi_Host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
csio_vport_delete(struct fc_vport *fc_vport)
{
 struct csio_lnode *ln = *(struct csio_lnode **)fc_vport->dd_data;
 struct Scsi_Host *shost = csio_ln_to_shost(ln);
 struct csio_hw *hw = csio_lnode_to_hw(ln);
 int rmv;

 spin_lock_irq(&hw->lock);
 rmv = csio_is_hw_removing(hw);
 spin_unlock_irq(&hw->lock);

 if (rmv) {
  csio_shost_exit(ln);
  return 0;
 }


 scsi_block_requests(shost);
 spin_lock_irq(&hw->lock);
 csio_scsim_cleanup_io_lnode(csio_hw_to_scsim(hw), ln);
 csio_lnode_close(ln);
 spin_unlock_irq(&hw->lock);
 scsi_unblock_requests(shost);


 if (fc_vport->vport_state != FC_VPORT_DISABLED)
  csio_fcoe_free_vnp(hw, ln);

 csio_shost_exit(ln);
 return 0;
}
