
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct qdio_q {TYPE_1__* irq_ptr; int nr; } ;
struct TYPE_2__ {unsigned long sch_token; int schid; } ;


 int DBF_DEV_EVENT (int ,TYPE_1__*,char*,int ) ;
 int DBF_ERROR (char*,int ,int) ;
 int DBF_INFO ;
 int EIO ;
 unsigned int QDIO_SIGA_QEBSM_FLAG ;
 unsigned int QDIO_SIGA_SYNC ;
 int SCH_NO (struct qdio_q*) ;
 int do_siga_sync (unsigned long,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ is_qebsm (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 int siga_sync ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int qdio_siga_sync(struct qdio_q *q, unsigned int output,
     unsigned int input)
{
 unsigned long schid = *((u32 *) &q->irq_ptr->schid);
 unsigned int fc = QDIO_SIGA_SYNC;
 int cc;

 DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "siga-s:%1d", q->nr);
 qperf_inc(q, siga_sync);

 if (is_qebsm(q)) {
  schid = q->irq_ptr->sch_token;
  fc |= QDIO_SIGA_QEBSM_FLAG;
 }

 cc = do_siga_sync(schid, output, input, fc);
 if (unlikely(cc))
  DBF_ERROR("%4x SIGA-S:%2d", SCH_NO(q), cc);
 return (cc) ? -EIO : 0;
}
