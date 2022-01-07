
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {int sc_data_direction; } ;
struct request {int dummy; } ;
typedef int blk_status_t ;


 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 scalar_t__ WRITE ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_is_scsi (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int scsi_setup_fs_cmnd (struct scsi_device*,struct request*) ;
 int scsi_setup_scsi_cmnd (struct scsi_device*,struct request*) ;

__attribute__((used)) static blk_status_t scsi_setup_cmnd(struct scsi_device *sdev,
  struct request *req)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(req);

 if (!blk_rq_bytes(req))
  cmd->sc_data_direction = DMA_NONE;
 else if (rq_data_dir(req) == WRITE)
  cmd->sc_data_direction = DMA_TO_DEVICE;
 else
  cmd->sc_data_direction = DMA_FROM_DEVICE;

 if (blk_rq_is_scsi(req))
  return scsi_setup_scsi_cmnd(sdev, req);
 else
  return scsi_setup_fs_cmnd(sdev, req);
}
