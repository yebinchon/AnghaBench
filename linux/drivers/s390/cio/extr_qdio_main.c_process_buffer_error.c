
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qdio_q {TYPE_2__** sbal; int nr; scalar_t__ is_input_q; int irq_ptr; int qdio_error; } ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int sflags; } ;


 int DBF_DEV_EVENT (int ,int ,char*,unsigned int) ;
 int DBF_ERROR (char*,unsigned int,...) ;
 int DBF_INFO ;
 int QDIO_ERROR_SLSB_STATE ;
 scalar_t__ QDIO_IQDIO_QFMT ;
 int SCH_NO (struct qdio_q*) ;
 unsigned char SLSB_P_INPUT_NOT_INIT ;
 unsigned char SLSB_P_OUTPUT_NOT_INIT ;
 int qperf_inc (struct qdio_q*,int ) ;
 scalar_t__ queue_type (struct qdio_q*) ;
 int set_buf_states (struct qdio_q*,unsigned int,unsigned char,int) ;
 int target_full ;

__attribute__((used)) static void process_buffer_error(struct qdio_q *q, unsigned int start,
     int count)
{
 unsigned char state = (q->is_input_q) ? SLSB_P_INPUT_NOT_INIT :
     SLSB_P_OUTPUT_NOT_INIT;

 q->qdio_error = QDIO_ERROR_SLSB_STATE;


 if (queue_type(q) == QDIO_IQDIO_QFMT && !q->is_input_q &&
     q->sbal[start]->element[15].sflags == 0x10) {
  qperf_inc(q, target_full);
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "OUTFULL FTC:%02x", start);
  goto set;
 }

 DBF_ERROR("%4x BUF ERROR", SCH_NO(q));
 DBF_ERROR((q->is_input_q) ? "IN:%2d" : "OUT:%2d", q->nr);
 DBF_ERROR("FTC:%3d C:%3d", start, count);
 DBF_ERROR("F14:%2x F15:%2x",
    q->sbal[start]->element[14].sflags,
    q->sbal[start]->element[15].sflags);

set:




 set_buf_states(q, start, state, count);
}
