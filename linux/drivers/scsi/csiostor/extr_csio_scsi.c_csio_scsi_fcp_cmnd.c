
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ Message; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; int cmnd; } ;
struct fcp_cmnd {scalar_t__ fc_tm_flags; int fc_lun; scalar_t__ fc_flags; int fc_dl; int fc_pri_ta; int fc_cdb; scalar_t__ fc_cmdref; } ;
struct csio_ioreq {scalar_t__ datadir; scalar_t__ nsge; } ;
struct TYPE_3__ {int lun; } ;


 scalar_t__ DMA_TO_DEVICE ;
 scalar_t__ FCP_CFL_RDDATA ;
 scalar_t__ FCP_CFL_WRDATA ;
 int FCP_PTA_SIMPLE ;
 int cpu_to_be32 (int ) ;
 struct scsi_cmnd* csio_scsi_cmnd (struct csio_ioreq*) ;
 int int_to_scsilun (int ,int *) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,int ,int) ;
 int memset (struct fcp_cmnd*,int ,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static inline void
csio_scsi_fcp_cmnd(struct csio_ioreq *req, void *addr)
{
 struct fcp_cmnd *fcp_cmnd = (struct fcp_cmnd *)addr;
 struct scsi_cmnd *scmnd = csio_scsi_cmnd(req);


 if (likely(scmnd->SCp.Message == 0)) {
  int_to_scsilun(scmnd->device->lun, &fcp_cmnd->fc_lun);
  fcp_cmnd->fc_tm_flags = 0;
  fcp_cmnd->fc_cmdref = 0;

  memcpy(fcp_cmnd->fc_cdb, scmnd->cmnd, 16);
  fcp_cmnd->fc_pri_ta = FCP_PTA_SIMPLE;
  fcp_cmnd->fc_dl = cpu_to_be32(scsi_bufflen(scmnd));

  if (req->nsge)
   if (req->datadir == DMA_TO_DEVICE)
    fcp_cmnd->fc_flags = FCP_CFL_WRDATA;
   else
    fcp_cmnd->fc_flags = FCP_CFL_RDDATA;
  else
   fcp_cmnd->fc_flags = 0;
 } else {
  memset(fcp_cmnd, 0, sizeof(*fcp_cmnd));
  int_to_scsilun(scmnd->device->lun, &fcp_cmnd->fc_lun);
  fcp_cmnd->fc_tm_flags = (uint8_t)scmnd->SCp.Message;
 }
}
