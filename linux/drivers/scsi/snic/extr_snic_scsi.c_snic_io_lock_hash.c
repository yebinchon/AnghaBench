
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct snic {int * io_req_lock; } ;
struct scsi_cmnd {int dummy; } ;
typedef int spinlock_t ;


 int SNIC_IO_LOCKS ;
 int snic_cmd_tag (struct scsi_cmnd*) ;

__attribute__((used)) static inline spinlock_t *
snic_io_lock_hash(struct snic *snic, struct scsi_cmnd *sc)
{
 u32 hash = snic_cmd_tag(sc) & (SNIC_IO_LOCKS - 1);

 return &snic->io_req_lock[hash];
}
