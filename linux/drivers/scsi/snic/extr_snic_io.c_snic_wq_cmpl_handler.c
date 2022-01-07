
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_ack_time; } ;
struct TYPE_4__ {TYPE_1__ misc; } ;
struct snic {unsigned int wq_count; int * cq; TYPE_2__ s_stats; } ;


 int jiffies ;
 int snic_wq_cmpl_handler_cont ;
 scalar_t__ svnic_cq_service (int *,int,int ,int *) ;

int
snic_wq_cmpl_handler(struct snic *snic, int work_to_do)
{
 unsigned int work_done = 0;
 unsigned int i;

 snic->s_stats.misc.last_ack_time = jiffies;
 for (i = 0; i < snic->wq_count; i++) {
  work_done += svnic_cq_service(&snic->cq[i],
           work_to_do,
           snic_wq_cmpl_handler_cont,
           ((void*)0));
 }

 return work_done;
}
