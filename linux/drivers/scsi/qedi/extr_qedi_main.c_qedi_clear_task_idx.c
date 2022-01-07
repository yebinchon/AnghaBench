
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dbg_ctx; int task_idx_map; } ;


 int QEDI_ERR (int *,char*,int) ;
 int test_and_clear_bit (int,int ) ;

void qedi_clear_task_idx(struct qedi_ctx *qedi, int idx)
{
 if (!test_and_clear_bit(idx, qedi->task_idx_map))
  QEDI_ERR(&qedi->dbg_ctx,
    "FW task context, already cleared, tid=0x%x\n", idx);
}
