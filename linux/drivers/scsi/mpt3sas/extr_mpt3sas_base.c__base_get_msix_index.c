
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int dummy; } ;
struct MPT3SAS_ADAPTER {int * cpu_msix_table; scalar_t__ reply_queue_count; int total_io_cnt; scalar_t__ msix_load_balance; } ;


 int atomic64_add_return (int,int *) ;
 int base_mod64 (int ,scalar_t__) ;
 size_t raw_smp_processor_id () ;

__attribute__((used)) static inline u8
_base_get_msix_index(struct MPT3SAS_ADAPTER *ioc,
 struct scsi_cmnd *scmd)
{

 if (ioc->msix_load_balance)
  return ioc->reply_queue_count ?
      base_mod64(atomic64_add_return(1,
      &ioc->total_io_cnt), ioc->reply_queue_count) : 0;

 return ioc->cpu_msix_table[raw_smp_processor_id()];
}
