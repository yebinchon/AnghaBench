
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int dummy; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_2__ {scalar_t__ CommandStatus; scalar_t__ ScsiStatus; scalar_t__* SenseInfo; } ;


 scalar_t__ CMD_SUCCESS ;
 scalar_t__ CMD_TARGET_STATUS ;
 scalar_t__ NO_SENSE ;
 int NO_TIMEOUT ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 int TEST_UNIT_READY ;
 int TYPE_CMD ;
 scalar_t__ UNIT_ATTENTION ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,int *,int ,int ,unsigned char*,int ) ;
 int hpsa_scsi_do_simple_cmd (struct ctlr_info*,struct CommandList*,int,int ) ;

__attribute__((used)) static int hpsa_send_test_unit_ready(struct ctlr_info *h,
    struct CommandList *c, unsigned char lunaddr[],
    int reply_queue)
{
 int rc;


 (void) fill_cmd(c, TEST_UNIT_READY, h,
   ((void*)0), 0, 0, lunaddr, TYPE_CMD);
 rc = hpsa_scsi_do_simple_cmd(h, c, reply_queue, NO_TIMEOUT);
 if (rc)
  return rc;



 if (c->err_info->CommandStatus == CMD_SUCCESS)
  return 0;






 if (c->err_info->CommandStatus == CMD_TARGET_STATUS &&
  c->err_info->ScsiStatus == SAM_STAT_CHECK_CONDITION &&
   (c->err_info->SenseInfo[2] == NO_SENSE ||
    c->err_info->SenseInfo[2] == UNIT_ATTENTION))
  return 0;

 return 1;
}
