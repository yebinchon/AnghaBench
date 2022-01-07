
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; int * host_scribble; } ;
struct bfad_itnim_s {int dummy; } ;
struct bfad_itnim_data_s {struct bfad_itnim_s* itnim; } ;
struct bfad_ioim_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ queue_depth; struct bfad_itnim_data_s* hostdata; int * host; } ;


 int DID_OK ;
 int SCSI_STATUS_GOOD ;
 scalar_t__ bfa_lun_queue_depth ;
 int bfad_ramp_up_qdepth (struct bfad_itnim_s*,TYPE_1__*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

void
bfa_cb_ioim_good_comp(void *drv, struct bfad_ioim_s *dio)
{
 struct scsi_cmnd *cmnd = (struct scsi_cmnd *)dio;
 struct bfad_itnim_data_s *itnim_data;
 struct bfad_itnim_s *itnim;

 cmnd->result = DID_OK << 16 | SCSI_STATUS_GOOD;


 if (cmnd->device->host != ((void*)0))
  scsi_dma_unmap(cmnd);

 cmnd->host_scribble = ((void*)0);


 if (bfa_lun_queue_depth > cmnd->device->queue_depth) {
  itnim_data = cmnd->device->hostdata;
  if (itnim_data) {
   itnim = itnim_data->itnim;
   if (itnim)
    bfad_ramp_up_qdepth(itnim, cmnd->device);
  }
 }

 cmnd->scsi_done(cmnd);
}
