
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int * vport_debugfs_root; int * debug_cpucheck; int * debug_nvmektime; int * debug_scsistat; int * debug_nvmestat; int * debug_nodelist; int * debug_disc_trc; int * disc_trc; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int * hba_debugfs_root; int * idiag_root; int * idiag_pci_cfg; int * idiag_bar_acc; int * idiag_que_info; int * idiag_que_acc; int * idiag_drb_acc; int * idiag_ctl_acc; int * idiag_mbx_acc; int * idiag_ext_acc; int * nvmeio_trc; int * debug_nvmeio_trc; int * debug_slow_ring_trc; int * slow_ring_trc; int * debug_readRef; int * debug_readApp; int * debug_readGuard; int * debug_writeRef; int * debug_writeApp; int * debug_writeGuard; int * debug_InjErrWWPN; int * debug_InjErrNPortID; int * debug_InjErrLBA; int * debug_dumpHostSlim; int * debug_dumpHBASlim; int * debug_lockstat; int * debug_hbqinfo; int * debug_multixri_pools; int debugfs_vport_count; } ;


 scalar_t__ LPFC_SLI_REV4 ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int debugfs_remove (int *) ;
 int kfree (int *) ;
 int lpfc_debugfs_hba_count ;
 int * lpfc_debugfs_root ;

inline void
lpfc_debugfs_terminate(struct lpfc_vport *vport)
{
 return;
}
