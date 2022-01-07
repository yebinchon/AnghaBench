
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct csio_q {scalar_t__ pidx; scalar_t__ cidx; scalar_t__ credits; } ;



__attribute__((used)) static inline uint32_t
csio_wr_avail_qcredits(struct csio_q *q)
{
 if (q->pidx > q->cidx)
  return q->pidx - q->cidx;
 else if (q->cidx > q->pidx)
  return q->credits - (q->cidx - q->pidx);
 else
  return 0;
}
