
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct qedi_ctx {int dbg_ctx; TYPE_1__* itt_map; } ;
typedef size_t s16 ;
struct TYPE_2__ {scalar_t__ itt; } ;


 size_t MAX_ISCSI_TASK_ENTRIES ;
 int QEDI_INFO (int *,int ,char*,scalar_t__,size_t) ;
 int QEDI_LOG_CONN ;
 int WARN_ON (int) ;

void qedi_get_task_tid(struct qedi_ctx *qedi, u32 itt, s16 *tid)
{
 u16 i;

 for (i = 0; i < MAX_ISCSI_TASK_ENTRIES; i++) {
  if (qedi->itt_map[i].itt == itt) {
   *tid = i;
   QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
      "Ref itt=0x%x, found at tid=0x%x\n",
      itt, *tid);
   return;
  }
 }

 WARN_ON(1);
}
