
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct lpfc_hba {struct lpfc_debugfs_trc* slow_ring_trc; int slow_ring_trc_cnt; } ;
struct lpfc_debugfs_trc {char* fmt; int seq_cnt; int jif; void* data3; void* data2; void* data1; } ;


 int atomic_inc_return (int *) ;
 int jiffies ;
 int lpfc_debugfs_enable ;
 int lpfc_debugfs_max_slow_ring_trc ;
 int lpfc_debugfs_seq_trc_cnt ;

inline void
lpfc_debugfs_slow_ring_trc(struct lpfc_hba *phba, char *fmt,
 uint32_t data1, uint32_t data2, uint32_t data3)
{
 return;
}
