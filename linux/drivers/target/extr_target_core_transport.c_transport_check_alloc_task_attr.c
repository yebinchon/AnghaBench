
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {TYPE_1__* transport; } ;
struct se_cmd {scalar_t__ sam_task_attr; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_2__ {int transport_flags; } ;


 scalar_t__ TCM_ACA_TAG ;
 int TCM_INVALID_CDB_FIELD ;
 int TRANSPORT_FLAG_PASSTHROUGH ;
 int pr_debug (char*) ;

__attribute__((used)) static sense_reason_t
transport_check_alloc_task_attr(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;





 if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH)
  return 0;

 if (cmd->sam_task_attr == TCM_ACA_TAG) {
  pr_debug("SAM Task Attribute ACA"
   " emulation is not supported\n");
  return TCM_INVALID_CDB_FIELD;
 }

 return 0;
}
