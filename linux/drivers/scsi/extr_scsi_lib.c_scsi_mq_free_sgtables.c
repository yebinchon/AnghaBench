
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nents; } ;
struct TYPE_4__ {TYPE_3__ table; } ;
struct scsi_cmnd {TYPE_2__* prot_sdb; TYPE_1__ sdb; } ;
struct TYPE_5__ {TYPE_3__ table; } ;


 int SCSI_INLINE_PROT_SG_CNT ;
 int SCSI_INLINE_SG_CNT ;
 scalar_t__ scsi_prot_sg_count (struct scsi_cmnd*) ;
 int sg_free_table_chained (TYPE_3__*,int ) ;

__attribute__((used)) static void scsi_mq_free_sgtables(struct scsi_cmnd *cmd)
{
 if (cmd->sdb.table.nents)
  sg_free_table_chained(&cmd->sdb.table,
    SCSI_INLINE_SG_CNT);
 if (scsi_prot_sg_count(cmd))
  sg_free_table_chained(&cmd->prot_sdb->table,
    SCSI_INLINE_PROT_SG_CNT);
}
