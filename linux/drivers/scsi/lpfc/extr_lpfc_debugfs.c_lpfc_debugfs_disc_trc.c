
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct lpfc_vport {struct lpfc_debugfs_trc* disc_trc; int disc_trc_cnt; } ;
struct lpfc_debugfs_trc {char* fmt; int seq_cnt; int jif; void* data3; void* data2; void* data1; } ;


 int atomic_inc_return (int *) ;
 int jiffies ;
 int lpfc_debugfs_enable ;
 int lpfc_debugfs_mask_disc_trc ;
 int lpfc_debugfs_max_disc_trc ;
 int lpfc_debugfs_seq_trc_cnt ;

inline void
lpfc_debugfs_disc_trc(struct lpfc_vport *vport, int mask, char *fmt,
 uint32_t data1, uint32_t data2, uint32_t data3)
{
 return;
}
