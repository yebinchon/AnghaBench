
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct scsiio_tracker {int smid; } ;
struct scsi_cmnd {int dummy; } ;
struct chain_tracker {int dummy; } ;
struct MPT3SAS_ADAPTER {size_t chains_needed_per_io; TYPE_1__* chain_lookup; } ;
struct TYPE_2__ {int chain_offset; struct chain_tracker* chains_per_smid; } ;


 int atomic_inc (int *) ;
 size_t atomic_read (int *) ;
 struct scsiio_tracker* scsi_cmd_priv (struct scsi_cmnd*) ;

__attribute__((used)) static struct chain_tracker *
_base_get_chain_buffer_tracker(struct MPT3SAS_ADAPTER *ioc,
          struct scsi_cmnd *scmd)
{
 struct chain_tracker *chain_req;
 struct scsiio_tracker *st = scsi_cmd_priv(scmd);
 u16 smid = st->smid;
 u8 chain_offset =
    atomic_read(&ioc->chain_lookup[smid - 1].chain_offset);

 if (chain_offset == ioc->chains_needed_per_io)
  return ((void*)0);

 chain_req = &ioc->chain_lookup[smid - 1].chains_per_smid[chain_offset];
 atomic_inc(&ioc->chain_lookup[smid - 1].chain_offset);
 return chain_req;
}
