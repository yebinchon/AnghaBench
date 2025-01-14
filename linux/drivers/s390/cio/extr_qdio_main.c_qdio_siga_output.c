
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef unsigned long u32 ;
struct qdio_q {TYPE_1__* irq_ptr; int nr; int mask; } ;
struct TYPE_2__ {unsigned long sch_token; int schid; } ;


 int DBF_DEV_EVENT (int ,TYPE_1__*,char*,int,...) ;
 int DBF_WARN ;
 scalar_t__ QDIO_BUSY_BIT_PATIENCE ;
 unsigned int QDIO_SIGA_QEBSM_FLAG ;
 unsigned int QDIO_SIGA_WRITE ;
 unsigned int QDIO_SIGA_WRITEQ ;
 int SCH_NO (struct qdio_q*) ;
 int do_siga_output (unsigned long,int ,unsigned int*,unsigned int,unsigned long) ;
 scalar_t__ get_tod_clock_fast () ;
 scalar_t__ is_qebsm (struct qdio_q*) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static int qdio_siga_output(struct qdio_q *q, unsigned int *busy_bit,
 unsigned long aob)
{
 unsigned long schid = *((u32 *) &q->irq_ptr->schid);
 unsigned int fc = QDIO_SIGA_WRITE;
 u64 start_time = 0;
 int retries = 0, cc;
 unsigned long laob = 0;

 if (aob) {
  fc = QDIO_SIGA_WRITEQ;
  laob = aob;
 }

 if (is_qebsm(q)) {
  schid = q->irq_ptr->sch_token;
  fc |= QDIO_SIGA_QEBSM_FLAG;
 }
again:
 cc = do_siga_output(schid, q->mask, busy_bit, fc, laob);


 if (unlikely(*busy_bit)) {
  retries++;

  if (!start_time) {
   start_time = get_tod_clock_fast();
   goto again;
  }
  if (get_tod_clock_fast() - start_time < QDIO_BUSY_BIT_PATIENCE)
   goto again;
 }
 if (retries) {
  DBF_DEV_EVENT(DBF_WARN, q->irq_ptr,
         "%4x cc2 BB1:%1d", SCH_NO(q), q->nr);
  DBF_DEV_EVENT(DBF_WARN, q->irq_ptr, "count:%u", retries);
 }
 return cc;
}
