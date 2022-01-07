
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_dump_segment {int size; int da; scalar_t__ priv; } ;
struct rproc {struct q6v5* priv; } ;
struct q6v5 {unsigned long dump_segment_mask; unsigned long dump_complete_mask; scalar_t__ dump_mba_loaded; } ;


 unsigned long BIT (unsigned long) ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int,int ) ;
 int q6v5_mba_load (struct q6v5*) ;
 int q6v5_mba_reclaim (struct q6v5*) ;
 void* rproc_da_to_va (struct rproc*,int ,int ) ;

__attribute__((used)) static void qcom_q6v5_dump_segment(struct rproc *rproc,
       struct rproc_dump_segment *segment,
       void *dest)
{
 int ret = 0;
 struct q6v5 *qproc = rproc->priv;
 unsigned long mask = BIT((unsigned long)segment->priv);
 void *ptr = rproc_da_to_va(rproc, segment->da, segment->size);


 if (!qproc->dump_mba_loaded)
  ret = q6v5_mba_load(qproc);

 if (!ptr || ret)
  memset(dest, 0xff, segment->size);
 else
  memcpy(dest, ptr, segment->size);

 qproc->dump_segment_mask |= mask;


 if (qproc->dump_segment_mask == qproc->dump_complete_mask) {
  if (qproc->dump_mba_loaded)
   q6v5_mba_reclaim(qproc);
 }
}
