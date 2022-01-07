
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int max_active_conns; } ;
struct qedi_conn {int dummy; } ;


 int SUCCESS ;
 struct qedi_conn* qedi_get_conn_from_id (struct qedi_ctx*,int) ;
 int qedi_start_conn_recovery (struct qedi_ctx*,struct qedi_conn*) ;

int qedi_recover_all_conns(struct qedi_ctx *qedi)
{
 struct qedi_conn *qedi_conn;
 int i;

 for (i = 0; i < qedi->max_active_conns; i++) {
  qedi_conn = qedi_get_conn_from_id(qedi, i);
  if (!qedi_conn)
   continue;

  qedi_start_conn_recovery(qedi, qedi_conn);
 }

 return SUCCESS;
}
