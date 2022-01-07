
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int actv_reqs; } ;
struct TYPE_6__ {TYPE_2__ fw; } ;
struct TYPE_4__ {int wq_enet_desc_count; } ;
struct snic {TYPE_3__ s_stats; int shost; TYPE_1__ config; } ;


 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_INFO (int ,char*) ;
 int SNIC_REQ_HBA_RESET ;
 scalar_t__ atomic64_read (int *) ;

__attribute__((used)) static int
snic_wqdesc_avail(struct snic *snic, int q_num, int req_type)
{
 int nr_wqdesc = snic->config.wq_enet_desc_count;

 if (q_num > 0) {




  SNIC_HOST_INFO(snic->shost, "desc_avail: Multi Queue case.\n");
  SNIC_BUG_ON(q_num > 0);

  return -1;
 }

 nr_wqdesc -= atomic64_read(&snic->s_stats.fw.actv_reqs);

 return ((req_type == SNIC_REQ_HBA_RESET) ? nr_wqdesc : nr_wqdesc - 1);
}
