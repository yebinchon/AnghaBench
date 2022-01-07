
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {scalar_t__ dd_data; } ;
struct csio_lnode {int dummy; } ;
struct csio_hw {int lock; } ;
struct Scsi_Host {int dummy; } ;


 int FC_VPORT_DISABLED ;
 int FC_VPORT_INITIALIZING ;
 scalar_t__ csio_fcoe_alloc_vnp (struct csio_hw*,struct csio_lnode*) ;
 int csio_fcoe_free_vnp (struct csio_hw*,struct csio_lnode*) ;
 int csio_hw_to_scsim (struct csio_hw*) ;
 int csio_ln_err (struct csio_lnode*,char*) ;
 struct Scsi_Host* csio_ln_to_shost (struct csio_lnode*) ;
 int csio_lnode_stop (struct csio_lnode*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_scsim_cleanup_io_lnode (int ,struct csio_lnode*) ;
 int fc_vport_set_state (struct fc_vport*,int ) ;
 int scsi_block_requests (struct Scsi_Host*) ;
 int scsi_unblock_requests (struct Scsi_Host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
csio_vport_disable(struct fc_vport *fc_vport, bool disable)
{
 struct csio_lnode *ln = *(struct csio_lnode **)fc_vport->dd_data;
 struct Scsi_Host *shost = csio_ln_to_shost(ln);
 struct csio_hw *hw = csio_lnode_to_hw(ln);


 if (disable) {

  scsi_block_requests(shost);
  spin_lock_irq(&hw->lock);
  csio_scsim_cleanup_io_lnode(csio_hw_to_scsim(hw), ln);
  csio_lnode_stop(ln);
  spin_unlock_irq(&hw->lock);
  scsi_unblock_requests(shost);


  csio_fcoe_free_vnp(hw, ln);
  fc_vport_set_state(fc_vport, FC_VPORT_DISABLED);
  csio_ln_err(ln, "vport disabled\n");
  return 0;
 } else {

  fc_vport_set_state(fc_vport, FC_VPORT_INITIALIZING);
  if (csio_fcoe_alloc_vnp(hw, ln)) {
   csio_ln_err(ln, "vport enabled failed.\n");
   return -1;
  }
  csio_ln_err(ln, "vport enabled\n");
  return 0;
 }
}
