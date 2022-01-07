
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void* uint16_t ;
struct lpfc_hba {int nvmeio_trc_size; struct lpfc_debugfs_nvmeio_trc* nvmeio_trc; int nvmeio_trc_cnt; int nvmeio_trc_on; } ;
struct lpfc_debugfs_nvmeio_trc {char* fmt; int data3; void* data2; void* data1; } ;


 int atomic_inc_return (int *) ;

inline void
lpfc_debugfs_nvme_trc(struct lpfc_hba *phba, char *fmt,
        uint16_t data1, uint16_t data2, uint32_t data3)
{
}
