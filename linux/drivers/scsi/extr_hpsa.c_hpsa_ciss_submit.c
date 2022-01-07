
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {unsigned char* host_scribble; int cmd_len; int sc_data_direction; int * cmnd; } ;
struct hpsa_scsi_dev_t {scalar_t__ in_reset; int * scsi3addr; } ;
struct ctlr_info {TYPE_4__* pdev; } ;
struct TYPE_7__ {int CDBLen; void* type_attr_dir; int * CDB; scalar_t__ Timeout; } ;
struct TYPE_5__ {int * LunAddrBytes; } ;
struct TYPE_6__ {int tag; TYPE_1__ LUN; scalar_t__ ReplyQueue; } ;
struct CommandList {int cmdindex; struct hpsa_scsi_dev_t* device; TYPE_3__ Request; TYPE_2__ Header; struct scsi_cmnd* scsi_cmd; int cmd_type; } ;
struct TYPE_8__ {int dev; } ;


 int ATTR_SIMPLE ;
 int BUG () ;
 int BUG_ON (int) ;
 int CMD_SCSI ;
 int DIRECT_LOOKUP_SHIFT ;




 int SCSI_MLQUEUE_HOST_BUSY ;
 void* TYPE_ATTR_DIR (int ,int ,int ) ;
 int TYPE_CMD ;
 int XFER_NONE ;
 int XFER_READ ;
 int XFER_RSVD ;
 int XFER_WRITE ;
 int cpu_to_le64 (int) ;
 int dev_err (int *,char*,int) ;
 int enqueue_cmd_and_start_io (struct ctlr_info*,struct CommandList*) ;
 int hpsa_cmd_resolve_and_free (struct ctlr_info*,struct CommandList*) ;
 scalar_t__ hpsa_scatter_gather (struct ctlr_info*,struct CommandList*,struct scsi_cmnd*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hpsa_ciss_submit(struct ctlr_info *h,
 struct CommandList *c, struct scsi_cmnd *cmd,
 struct hpsa_scsi_dev_t *dev)
{
 cmd->host_scribble = (unsigned char *) c;
 c->cmd_type = CMD_SCSI;
 c->scsi_cmd = cmd;
 c->Header.ReplyQueue = 0;
 memcpy(&c->Header.LUN.LunAddrBytes[0], &dev->scsi3addr[0], 8);
 c->Header.tag = cpu_to_le64((c->cmdindex << DIRECT_LOOKUP_SHIFT));



 c->Request.Timeout = 0;
 BUG_ON(cmd->cmd_len > sizeof(c->Request.CDB));
 c->Request.CDBLen = cmd->cmd_len;
 memcpy(c->Request.CDB, cmd->cmnd, cmd->cmd_len);
 switch (cmd->sc_data_direction) {
 case 128:
  c->Request.type_attr_dir =
   TYPE_ATTR_DIR(TYPE_CMD, ATTR_SIMPLE, XFER_WRITE);
  break;
 case 130:
  c->Request.type_attr_dir =
   TYPE_ATTR_DIR(TYPE_CMD, ATTR_SIMPLE, XFER_READ);
  break;
 case 129:
  c->Request.type_attr_dir =
   TYPE_ATTR_DIR(TYPE_CMD, ATTR_SIMPLE, XFER_NONE);
  break;
 case 131:





  c->Request.type_attr_dir =
   TYPE_ATTR_DIR(TYPE_CMD, ATTR_SIMPLE, XFER_RSVD);
  break;

 default:
  dev_err(&h->pdev->dev, "unknown data direction: %d\n",
   cmd->sc_data_direction);
  BUG();
  break;
 }

 if (hpsa_scatter_gather(h, c, cmd) < 0) {
  hpsa_cmd_resolve_and_free(h, c);
  return SCSI_MLQUEUE_HOST_BUSY;
 }

 if (dev->in_reset) {
  hpsa_cmd_resolve_and_free(h, c);
  return SCSI_MLQUEUE_HOST_BUSY;
 }

 c->device = dev;

 enqueue_cmd_and_start_io(h, c);

 return 0;
}
