
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct ctlr_info {int dummy; } ;
struct ErrorInfo {int CommandStatus; int SenseLen; int ScsiStatus; int SenseInfo; } ;
struct CommandList {TYPE_2__* h; struct ErrorInfo* err_info; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;
 int SAM_STAT_CHECK_CONDITION ;
 int decode_sense_data (int ,int,int *,int *,int *) ;
 int dev_warn (struct device*,char*,...) ;
 int hpsa_print_cmd (struct ctlr_info*,char*,struct CommandList*) ;

__attribute__((used)) static void hpsa_scsi_interpret_error(struct ctlr_info *h,
   struct CommandList *cp)
{
 const struct ErrorInfo *ei = cp->err_info;
 struct device *d = &cp->h->pdev->dev;
 u8 sense_key, asc, ascq;
 int sense_len;

 switch (ei->CommandStatus) {
 case 131:
  if (ei->SenseLen > sizeof(ei->SenseInfo))
   sense_len = sizeof(ei->SenseInfo);
  else
   sense_len = ei->SenseLen;
  decode_sense_data(ei->SenseInfo, sense_len,
     &sense_key, &asc, &ascq);
  hpsa_print_cmd(h, "SCSI status", cp);
  if (ei->ScsiStatus == SAM_STAT_CHECK_CONDITION)
   dev_warn(d, "SCSI Status = 02, Sense key = 0x%02x, ASC = 0x%02x, ASCQ = 0x%02x\n",
    sense_key, asc, ascq);
  else
   dev_warn(d, "SCSI Status = 0x%02x\n", ei->ScsiStatus);
  if (ei->ScsiStatus == 0)
   dev_warn(d, "SCSI status is abnormally zero.  "
   "(probably indicates selection timeout "
   "reported incorrectly due to a known "
   "firmware bug, circa July, 2001.)\n");
  break;
 case 135:
  break;
 case 136:
  hpsa_print_cmd(h, "overrun condition", cp);
  break;
 case 133: {



  hpsa_print_cmd(h, "invalid command", cp);
  dev_warn(d, "probably means device no longer present\n");
  }
  break;
 case 132:
  hpsa_print_cmd(h, "protocol error", cp);
  break;
 case 134:
  hpsa_print_cmd(h, "hardware error", cp);
  break;
 case 138:
  hpsa_print_cmd(h, "connection lost", cp);
  break;
 case 140:
  hpsa_print_cmd(h, "aborted", cp);
  break;
 case 139:
  hpsa_print_cmd(h, "abort failed", cp);
  break;
 case 128:
  hpsa_print_cmd(h, "unsolicited abort", cp);
  break;
 case 130:
  hpsa_print_cmd(h, "timed out", cp);
  break;
 case 129:
  hpsa_print_cmd(h, "unabortable", cp);
  break;
 case 137:
  hpsa_print_cmd(h, "controller lockup detected", cp);
  break;
 default:
  hpsa_print_cmd(h, "unknown status", cp);
  dev_warn(d, "Unknown command status %x\n",
    ei->CommandStatus);
 }
}
