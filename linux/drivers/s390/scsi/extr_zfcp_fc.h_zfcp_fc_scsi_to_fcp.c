
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; TYPE_1__* device; int cmd_len; int cmnd; } ;
struct fcp_cmnd {void* fc_dl; int fc_cdb; int fc_flags; int fc_pri_ta; int fc_lun; } ;
struct TYPE_2__ {int sector_size; int lun; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int FCP_CFL_RDDATA ;
 int FCP_CFL_WRDATA ;
 int FCP_PTA_SIMPLE ;
 scalar_t__ SCSI_PROT_DIF_TYPE1 ;
 void* cpu_to_be32 (int) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int memcpy (int ,int ,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ scsi_get_prot_type (struct scsi_cmnd*) ;

__attribute__((used)) static inline
void zfcp_fc_scsi_to_fcp(struct fcp_cmnd *fcp, struct scsi_cmnd *scsi)
{
 u32 datalen;

 int_to_scsilun(scsi->device->lun, (struct scsi_lun *) &fcp->fc_lun);

 fcp->fc_pri_ta = FCP_PTA_SIMPLE;

 if (scsi->sc_data_direction == DMA_FROM_DEVICE)
  fcp->fc_flags |= FCP_CFL_RDDATA;
 if (scsi->sc_data_direction == DMA_TO_DEVICE)
  fcp->fc_flags |= FCP_CFL_WRDATA;

 memcpy(fcp->fc_cdb, scsi->cmnd, scsi->cmd_len);

 datalen = scsi_bufflen(scsi);
 fcp->fc_dl = cpu_to_be32(datalen);

 if (scsi_get_prot_type(scsi) == SCSI_PROT_DIF_TYPE1) {
  datalen += datalen / scsi->device->sector_size * 8;
  fcp->fc_dl = cpu_to_be32(datalen);
 }
}
