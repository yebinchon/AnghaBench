
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int nr; TYPE_1__* irq_ptr; int first_to_kick; int (* handler ) (int ,int ,int,int ,int,int ) ;int is_input_q; } ;
struct TYPE_2__ {int int_parm; int cdev; int sch_token; scalar_t__ nr_input_qs; } ;


 int DBF_DEV_EVENT (int ,TYPE_1__*,char*,unsigned int) ;
 int DBF_ERROR (char*,int,...) ;
 int DBF_WARN ;
 int QDIO_ERROR_GET_BUF_STATE ;
 int SCH_NO (struct qdio_q*) ;
 unsigned int do_eqbs (int ,unsigned char*,int,int*,int*,int) ;
 int eqbs ;
 int eqbs_partial ;
 int qperf_inc (struct qdio_q*,int ) ;
 int stub1 (int ,int ,int,int ,int,int ) ;

__attribute__((used)) static int qdio_do_eqbs(struct qdio_q *q, unsigned char *state,
   int start, int count, int auto_ack)
{
 int tmp_count = count, tmp_start = start, nr = q->nr;
 unsigned int ccq = 0;

 qperf_inc(q, eqbs);

 if (!q->is_input_q)
  nr += q->irq_ptr->nr_input_qs;
again:
 ccq = do_eqbs(q->irq_ptr->sch_token, state, nr, &tmp_start, &tmp_count,
        auto_ack);

 switch (ccq) {
 case 0:
 case 32:

  return count - tmp_count;
 case 96:

  qperf_inc(q, eqbs_partial);
  DBF_DEV_EVENT(DBF_WARN, q->irq_ptr, "EQBS part:%02x",
   tmp_count);
  return count - tmp_count;
 case 97:

  DBF_DEV_EVENT(DBF_WARN, q->irq_ptr, "EQBS again:%2d", ccq);
  goto again;
 default:
  DBF_ERROR("%4x ccq:%3d", SCH_NO(q), ccq);
  DBF_ERROR("%4x EQBS ERROR", SCH_NO(q));
  DBF_ERROR("%3d%3d%2d", count, tmp_count, nr);
  q->handler(q->irq_ptr->cdev, QDIO_ERROR_GET_BUF_STATE, q->nr,
      q->first_to_kick, count, q->irq_ptr->int_parm);
  return 0;
 }
}
