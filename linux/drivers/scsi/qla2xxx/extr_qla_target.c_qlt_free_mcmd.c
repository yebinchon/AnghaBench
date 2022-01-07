
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_tgt_mgmt_cmd {int dummy; } ;


 int mempool_free (struct qla_tgt_mgmt_cmd*,int ) ;
 int qla_tgt_mgmt_cmd_mempool ;

void qlt_free_mcmd(struct qla_tgt_mgmt_cmd *mcmd)
{
 mempool_free(mcmd, qla_tgt_mgmt_cmd_mempool);
}
