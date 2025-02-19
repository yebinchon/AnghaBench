
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int mac_index; } ;


 int QL4010_FLASH_SEM_BITS ;
 int QL4010_FLASH_SEM_MASK ;
 int QL4022_FLASH_SEM_MASK ;
 int QL4022_RESOURCE_BITS_BASE_CODE ;
 scalar_t__ is_qla4010 (struct scsi_qla_host*) ;
 int ql4xxx_sem_spinlock (struct scsi_qla_host*,int ,int) ;

__attribute__((used)) static inline int ql4xxx_lock_flash(struct scsi_qla_host *a)
{
 if (is_qla4010(a))
  return ql4xxx_sem_spinlock(a, QL4010_FLASH_SEM_MASK,
        QL4010_FLASH_SEM_BITS);
 else
  return ql4xxx_sem_spinlock(a, QL4022_FLASH_SEM_MASK,
        (QL4022_RESOURCE_BITS_BASE_CODE |
         (a->mac_index)) << 13);
}
