
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct se_cmd {int scsi_asc; int scsi_ascq; TYPE_1__* se_tfo; } ;
struct TYPE_2__ {int fabric_name; } ;


 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static inline void set_ascq(struct se_cmd *cmd, u8 alua_ascq)
{





 pr_debug("[%s]: ALUA TG Port not available, "
  "SenseKey: NOT_READY, ASC/ASCQ: "
  "0x04/0x%02x\n",
  cmd->se_tfo->fabric_name, alua_ascq);

 cmd->scsi_asc = 0x04;
 cmd->scsi_ascq = alua_ascq;
}
