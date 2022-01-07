
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int role; scalar_t__ nport_id; } ;
struct csio_lnode {int n_scsi_tgts; } ;
struct csio_hw {int lock; } ;


 int CSIO_RNFR_TARGET ;
 scalar_t__ FC_FID_MGMT_SERV ;
 int csio_ln_fdmi_start (struct csio_lnode*,void*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_reg_rnode (struct csio_rnode*) ;
 struct csio_lnode* csio_rnode_to_lnode (struct csio_rnode*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
__csio_reg_rnode(struct csio_rnode *rn)
{
 struct csio_lnode *ln = csio_rnode_to_lnode(rn);
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 spin_unlock_irq(&hw->lock);
 csio_reg_rnode(rn);
 spin_lock_irq(&hw->lock);

 if (rn->role & CSIO_RNFR_TARGET)
  ln->n_scsi_tgts++;

 if (rn->nport_id == FC_FID_MGMT_SERV)
  csio_ln_fdmi_start(ln, (void *) rn);
}
