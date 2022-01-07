
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvmet_fc_tgt_queue {int sqsize; int sqtail; } ;


 int atomic_read (int *) ;

__attribute__((used)) static bool
queue_90percent_full(struct nvmet_fc_tgt_queue *q, u32 sqhd)
{
 u32 sqtail, used;


 sqtail = atomic_read(&q->sqtail) % q->sqsize;

 used = (sqtail < sqhd) ? (sqtail + q->sqsize - sqhd) : (sqtail - sqhd);
 return ((used * 10) >= (((u32)(q->sqsize - 1) * 9)));
}
