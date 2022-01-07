
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_status_struct {scalar_t__ resp; int stat; int buf_valid_size; int buf; int open_rej_reason; int residual; } ;
struct scsi_cmnd {int result; int sense_buffer; scalar_t__ underflow; } ;
struct sas_task {TYPE_3__* dev; struct task_status_struct task_status; } ;
struct TYPE_6__ {TYPE_2__* port; } ;
struct TYPE_5__ {TYPE_1__* ha; } ;
struct TYPE_4__ {int sas_ha_name; } ;


 int ASSIGN_SAS_TASK (struct scsi_cmnd*,int *) ;
 int DID_ABORT ;
 int DID_BAD_TARGET ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_PARITY ;
 int DID_SOFT_ERROR ;
 int SAS_OREJ_RSVD_RETRY ;




 scalar_t__ SAS_TASK_UNDELIVERED ;
 int SCSI_SENSE_BUFFERSIZE ;
 int memcpy (int ,int ,int ) ;
 int min (int ,int ) ;
 int pr_notice (char*,int ) ;
 int sas_free_task (struct sas_task*) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void sas_end_task(struct scsi_cmnd *sc, struct sas_task *task)
{
 struct task_status_struct *ts = &task->task_status;
 int hs = 0, stat = 0;

 if (ts->resp == SAS_TASK_UNDELIVERED) {

  hs = DID_NO_CONNECT;
 } else {

  switch (ts->stat) {
  case 136:
  case 135:
  case 131:
  case 134:
  case 132:
   hs = DID_NO_CONNECT;
   break;
  case 138:
   scsi_set_resid(sc, ts->residual);
   if (scsi_bufflen(sc) - scsi_get_resid(sc) < sc->underflow)
    hs = DID_ERROR;
   break;
  case 139:
   hs = DID_ERROR;
   break;
  case 129:
   hs = DID_SOFT_ERROR;
   break;
  case 137:
   hs = DID_BAD_TARGET;
   break;
  case 128:
   hs = DID_PARITY;
   break;
  case 133:
   if (ts->open_rej_reason == SAS_OREJ_RSVD_RETRY)
    hs = DID_SOFT_ERROR;
   else
    hs = DID_ERROR;
   break;
  case 130:
   pr_notice("LLDD:%s sent SAS_PROTO_RESP for an SSP task; please report this\n",
      task->dev->port->ha->sas_ha_name);
   break;
  case 140:
   hs = DID_ABORT;
   break;
  case 141:
   memcpy(sc->sense_buffer, ts->buf,
          min(SCSI_SENSE_BUFFERSIZE, ts->buf_valid_size));
   stat = 141;
   break;
  default:
   stat = ts->stat;
   break;
  }
 }

 sc->result = (hs << 16) | stat;
 ASSIGN_SAS_TASK(sc, ((void*)0));
 sas_free_task(task);
}
