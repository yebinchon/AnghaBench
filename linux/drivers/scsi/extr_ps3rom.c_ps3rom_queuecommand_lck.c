
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;unsigned char* cmnd; int* sense_buffer; int result; TYPE_1__* device; } ;
struct ps3rom_private {struct scsi_cmnd* curr_cmd; struct ps3_storage_device* dev; } ;
struct ps3_storage_device {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int ILLEGAL_REQUEST ;

 int SCSI_SENSE_BUFFERSIZE ;

 int memset (int*,int ,int ) ;
 int ps3rom_atapi_request (struct ps3_storage_device*,struct scsi_cmnd*) ;
 int ps3rom_read_request (struct ps3_storage_device*,struct scsi_cmnd*,int ,int ) ;
 int ps3rom_write_request (struct ps3_storage_device*,struct scsi_cmnd*,int ,int ) ;
 struct ps3rom_private* shost_priv (int ) ;
 int srb10_lba (struct scsi_cmnd*) ;
 int srb10_len (struct scsi_cmnd*) ;
 void stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int ps3rom_queuecommand_lck(struct scsi_cmnd *cmd,
          void (*done)(struct scsi_cmnd *))
{
 struct ps3rom_private *priv = shost_priv(cmd->device->host);
 struct ps3_storage_device *dev = priv->dev;
 unsigned char opcode;
 int res;

 priv->curr_cmd = cmd;
 cmd->scsi_done = done;

 opcode = cmd->cmnd[0];





 switch (opcode) {
 case 129:
  res = ps3rom_read_request(dev, cmd, srb10_lba(cmd),
       srb10_len(cmd));
  break;

 case 128:
  res = ps3rom_write_request(dev, cmd, srb10_lba(cmd),
        srb10_len(cmd));
  break;

 default:
  res = ps3rom_atapi_request(dev, cmd);
  break;
 }

 if (res) {
  memset(cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
  cmd->result = res;
  cmd->sense_buffer[0] = 0x70;
  cmd->sense_buffer[2] = ILLEGAL_REQUEST;
  priv->curr_cmd = ((void*)0);
  cmd->scsi_done(cmd);
 }

 return 0;
}
