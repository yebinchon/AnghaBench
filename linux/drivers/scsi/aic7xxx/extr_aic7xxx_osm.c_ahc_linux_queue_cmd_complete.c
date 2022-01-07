
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ahc_softc {int dummy; } ;
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
 int ahc_cmd_get_transaction_status (struct scsi_cmnd*) ;
 int ahc_cmd_set_transaction_status (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void
ahc_linux_queue_cmd_complete(struct ahc_softc *ahc, struct scsi_cmnd *cmd)
{






 {
  u_int new_status;

  switch (ahc_cmd_get_transaction_status(cmd)) {
  case 139:
  case 141:
  case 134:
   new_status = DID_OK;
   break;
  case 142:
   new_status = DID_ABORT;
   break;
  case 150:
   new_status = DID_BUS_BUSY;
   break;
  case 138:
  case 145:
   new_status = DID_BAD_TARGET;
   break;
  case 133:
   new_status = DID_NO_CONNECT;
   break;
  case 135:
  case 151:
   new_status = DID_RESET;
   break;
  case 130:
   new_status = DID_PARITY;
   break;
  case 148:
   new_status = DID_TIME_OUT;
   break;
  case 131:
  case 140:
  case 152:
  case 146:
  case 147:
  case 129:
  case 132:
  case 149:
  case 144:
  case 137:
  case 128:
  case 136:
   new_status = DID_ERROR;
   break;
  case 143:
   new_status = DID_REQUEUE;
   break;
  default:

   new_status = DID_ERROR;
   break;
  }

  ahc_cmd_set_transaction_status(cmd, new_status);
 }

 cmd->scsi_done(cmd);
}
