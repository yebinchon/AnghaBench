
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic_misc_stats {int max_cq_ents; } ;
struct TYPE_2__ {struct snic_misc_stats misc; } ;
struct snic {unsigned int wq_count; unsigned int cq_count; int * cq; TYPE_1__ s_stats; } ;


 unsigned int atomic64_read (int *) ;
 int atomic64_set (int *,unsigned int) ;
 int snic_io_cmpl_handler ;
 unsigned int vnic_cq_fw_service (int *,int ,int) ;

int
snic_fwcq_cmpl_handler(struct snic *snic, int io_cmpl_work)
{
 unsigned int num_ent = 0;
 unsigned int cq_idx;
 unsigned int nent_per_cq;
 struct snic_misc_stats *misc_stats = &snic->s_stats.misc;

 for (cq_idx = snic->wq_count; cq_idx < snic->cq_count; cq_idx++) {
  nent_per_cq = vnic_cq_fw_service(&snic->cq[cq_idx],
       snic_io_cmpl_handler,
       io_cmpl_work);
  num_ent += nent_per_cq;

  if (nent_per_cq > atomic64_read(&misc_stats->max_cq_ents))
   atomic64_set(&misc_stats->max_cq_ents, nent_per_cq);
 }

 return num_ent;
}
