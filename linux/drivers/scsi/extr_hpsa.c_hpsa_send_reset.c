
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hpsa_scsi_dev_t {int scsi3addr; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; struct hpsa_scsi_dev_t* device; } ;
struct TYPE_2__ {int dev; } ;


 int IO_OK ;
 int NO_TIMEOUT ;
 int TYPE_MSG ;
 struct CommandList* cmd_alloc (struct ctlr_info*) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 int dev_warn (int *,char*) ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,int *,int ,int ,int ,int ) ;
 int hpsa_scsi_do_simple_cmd (struct ctlr_info*,struct CommandList*,int,int ) ;
 int hpsa_scsi_interpret_error (struct ctlr_info*,struct CommandList*) ;

__attribute__((used)) static int hpsa_send_reset(struct ctlr_info *h, struct hpsa_scsi_dev_t *dev,
 u8 reset_type, int reply_queue)
{
 int rc = IO_OK;
 struct CommandList *c;
 struct ErrorInfo *ei;

 c = cmd_alloc(h);
 c->device = dev;


 (void) fill_cmd(c, reset_type, h, ((void*)0), 0, 0, dev->scsi3addr, TYPE_MSG);
 rc = hpsa_scsi_do_simple_cmd(h, c, reply_queue, NO_TIMEOUT);
 if (rc) {
  dev_warn(&h->pdev->dev, "Failed to send reset command\n");
  goto out;
 }


 ei = c->err_info;
 if (ei->CommandStatus != 0) {
  hpsa_scsi_interpret_error(h, c);
  rc = -1;
 }
out:
 cmd_free(h, c);
 return rc;
}
