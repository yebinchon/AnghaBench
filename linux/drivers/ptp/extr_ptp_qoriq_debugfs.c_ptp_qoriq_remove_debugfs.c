
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_qoriq {int * debugfs_root; } ;


 int debugfs_remove_recursive (int *) ;

void ptp_qoriq_remove_debugfs(struct ptp_qoriq *ptp_qoriq)
{
 debugfs_remove_recursive(ptp_qoriq->debugfs_root);
 ptp_qoriq->debugfs_root = ((void*)0);
}
