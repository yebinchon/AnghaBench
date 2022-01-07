
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ctlr_info {int dummy; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_2__ {unsigned char* SenseInfo; int SenseLen; int ScsiStatus; int CommandStatus; } ;


 int ASCQ_LUN_NOT_READY_FORMAT_IN_PROGRESS ;
 int ASCQ_LUN_NOT_READY_INITIALIZING_CMD_REQ ;
 int DEFAULT_REPLY_QUEUE ;




 unsigned char HPSA_LV_OK ;







 int NO_TIMEOUT ;
 int TEST_UNIT_READY ;
 int TYPE_CMD ;
 struct CommandList* cmd_alloc (struct ctlr_info*) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 int decode_sense_data (unsigned char*,int,int *,int *,int *) ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,int *,int ,int ,unsigned char*,int ) ;
 int hpsa_get_volume_status (struct ctlr_info*,unsigned char*) ;
 int hpsa_scsi_do_simple_cmd (struct ctlr_info*,struct CommandList*,int ,int ) ;

__attribute__((used)) static unsigned char hpsa_volume_offline(struct ctlr_info *h,
     unsigned char scsi3addr[])
{
 struct CommandList *c;
 unsigned char *sense;
 u8 sense_key, asc, ascq;
 int sense_len;
 int rc, ldstat = 0;
 u16 cmd_status;
 u8 scsi_status;




 c = cmd_alloc(h);

 (void) fill_cmd(c, TEST_UNIT_READY, h, ((void*)0), 0, 0, scsi3addr, TYPE_CMD);
 rc = hpsa_scsi_do_simple_cmd(h, c, DEFAULT_REPLY_QUEUE,
     NO_TIMEOUT);
 if (rc) {
  cmd_free(h, c);
  return 128;
 }
 sense = c->err_info->SenseInfo;
 if (c->err_info->SenseLen > sizeof(c->err_info->SenseInfo))
  sense_len = sizeof(c->err_info->SenseInfo);
 else
  sense_len = c->err_info->SenseLen;
 decode_sense_data(sense, sense_len, &sense_key, &asc, &ascq);
 cmd_status = c->err_info->CommandStatus;
 scsi_status = c->err_info->ScsiStatus;
 cmd_free(h, c);


 ldstat = hpsa_get_volume_status(h, scsi3addr);


 switch (ldstat) {
 case 136:
 case 130:
 case 135:
 case 129:
 case 134:
 case 137:
 case 133:
 case 132:
 case 131:
 case 138:
  return ldstat;
 case 128:



  if ((ascq == 0x04) ||
   (ascq == 0x02))
   return ldstat;
  break;
 default:
  break;
 }
 return HPSA_LV_OK;
}
