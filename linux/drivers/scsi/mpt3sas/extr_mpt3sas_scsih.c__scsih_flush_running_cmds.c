
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsiio_tracker {int dummy; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct MPT3SAS_ADAPTER {int scsiio_depth; scalar_t__ remove_host; scalar_t__ pci_error_recovery; } ;


 int DID_NO_CONNECT ;
 int DID_RESET ;
 int _scsih_set_satl_pending (struct scsi_cmnd*,int) ;
 int dtmprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int) ;
 int mpt3sas_base_clear_st (struct MPT3SAS_ADAPTER*,struct scsiio_tracker*) ;
 struct scsi_cmnd* mpt3sas_scsih_scsi_lookup_get (struct MPT3SAS_ADAPTER*,int) ;
 struct scsiio_tracker* scsi_cmd_priv (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void
_scsih_flush_running_cmds(struct MPT3SAS_ADAPTER *ioc)
{
 struct scsi_cmnd *scmd;
 struct scsiio_tracker *st;
 u16 smid;
 int count = 0;

 for (smid = 1; smid <= ioc->scsiio_depth; smid++) {
  scmd = mpt3sas_scsih_scsi_lookup_get(ioc, smid);
  if (!scmd)
   continue;
  count++;
  _scsih_set_satl_pending(scmd, 0);
  st = scsi_cmd_priv(scmd);
  mpt3sas_base_clear_st(ioc, st);
  scsi_dma_unmap(scmd);
  if (ioc->pci_error_recovery || ioc->remove_host)
   scmd->result = DID_NO_CONNECT << 16;
  else
   scmd->result = DID_RESET << 16;
  scmd->scsi_done(scmd);
 }
 dtmprintk(ioc, ioc_info(ioc, "completing %d cmds\n", count));
}
