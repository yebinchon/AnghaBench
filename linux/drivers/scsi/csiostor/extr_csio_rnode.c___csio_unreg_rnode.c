
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int role; int host_cmpl_q; } ;
struct csio_lnode {int last_scan_ntgts; int n_scsi_tgts; } ;
struct csio_hw {int lock; } ;


 int CSIO_RNFR_TARGET ;
 int LIST_HEAD (int ) ;
 int csio_dbg (struct csio_hw*,char*) ;
 int csio_hw_to_scsim (struct csio_hw*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 struct csio_lnode* csio_rnode_to_lnode (struct csio_rnode*) ;
 int csio_scsi_cleanup_io_q (int ,int *) ;
 int csio_unreg_rnode (struct csio_rnode*) ;
 int list_empty (int *) ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tmp_q ;

__attribute__((used)) static void
__csio_unreg_rnode(struct csio_rnode *rn)
{
 struct csio_lnode *ln = csio_rnode_to_lnode(rn);
 struct csio_hw *hw = csio_lnode_to_hw(ln);
 LIST_HEAD(tmp_q);
 int cmpl = 0;

 if (!list_empty(&rn->host_cmpl_q)) {
  csio_dbg(hw, "Returning completion queue I/Os\n");
  list_splice_tail_init(&rn->host_cmpl_q, &tmp_q);
  cmpl = 1;
 }

 if (rn->role & CSIO_RNFR_TARGET) {
  ln->n_scsi_tgts--;
  ln->last_scan_ntgts--;
 }

 spin_unlock_irq(&hw->lock);
 csio_unreg_rnode(rn);
 spin_lock_irq(&hw->lock);


 if (cmpl)
  csio_scsi_cleanup_io_q(csio_hw_to_scsim(hw), &tmp_q);

}
