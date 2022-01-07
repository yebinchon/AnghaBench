
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scsi_sense_data {int extra_len; int add_sense_code; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; scalar_t__ sense_buffer; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ lun; int id; int channel; } ;
 int DID_ABORT ;
 int DID_BAD_TARGET ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_PARITY ;
 int DID_REQUEUE ;
 int DID_RESET ;
 int DID_TIME_OUT ;
 int DRIVER_SENSE ;


 int ahd_cmd_get_scsi_status (struct scsi_cmnd*) ;
 int ahd_cmd_get_transaction_status (struct scsi_cmnd*) ;
 int ahd_cmd_set_transaction_status (struct scsi_cmnd*,int) ;
 int ahd_name (struct ahd_softc*) ;
 int printk (char*,int ,int,int ,int ,int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void
ahd_linux_queue_cmd_complete(struct ahd_softc *ahd, struct scsi_cmnd *cmd)
{
 int status;
 int new_status = DID_OK;
 int do_fallback = 0;
 int scsi_status;
 status = ahd_cmd_get_transaction_status(cmd);
 switch (status) {
 case 141:
 case 143:
  new_status = DID_OK;
  break;
 case 154:
  new_status = DID_ERROR;

 case 136:
  scsi_status = ahd_cmd_get_scsi_status(cmd);

  switch(scsi_status) {
  case 128:
  case 129:
   if ((cmd->result >> 24) != DRIVER_SENSE) {
    do_fallback = 1;
   } else {
    struct scsi_sense_data *sense;

    sense = (struct scsi_sense_data *)
     cmd->sense_buffer;
    if (sense->extra_len >= 5 &&
        (sense->add_sense_code == 0x47
         || sense->add_sense_code == 0x48))
     do_fallback = 1;
   }
   break;
  default:
   break;
  }
  break;
 case 144:
  new_status = DID_ABORT;
  break;
 case 152:
  new_status = DID_BUS_BUSY;
  break;
 case 140:
 case 147:
  new_status = DID_BAD_TARGET;
  break;
 case 135:
  new_status = DID_NO_CONNECT;
  break;
 case 137:
 case 153:
  new_status = DID_RESET;
  break;
 case 132:
  new_status = DID_PARITY;
  do_fallback = 1;
  break;
 case 150:
  new_status = DID_TIME_OUT;
  do_fallback = 1;
  break;
 case 142:
 case 131:
 case 149:
  new_status = DID_ERROR;
  do_fallback = 1;
  break;
 case 133:
 case 148:
 case 134:
 case 151:
 case 146:
 case 139:
 case 130:
 case 138:
  new_status = DID_ERROR;
  break;
 case 145:
  new_status = DID_REQUEUE;
  break;
 default:

  new_status = DID_ERROR;
  break;
 }

 if (do_fallback) {
  printk("%s: device overrun (status %x) on %d:%d:%d\n",
         ahd_name(ahd), status, cmd->device->channel,
         cmd->device->id, (u8)cmd->device->lun);
 }

 ahd_cmd_set_transaction_status(cmd, new_status);

 cmd->scsi_done(cmd);
}
