
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snic_abort_stats {int fail; int io_not_found; int fw_tmo; } ;
struct TYPE_2__ {struct snic_abort_stats abts; } ;
struct snic {int shost; TYPE_1__ s_stats; } ;


 int SNIC_SCSI_DBG (int ,char*) ;



 int atomic64_inc (int *) ;

__attribute__((used)) static void
snic_update_abort_stats(struct snic *snic, u8 cmpl_stat)
{
 struct snic_abort_stats *abt_stats = &snic->s_stats.abts;

 SNIC_SCSI_DBG(snic->shost, "Updating Abort stats.\n");

 switch (cmpl_stat) {
 case 129:
  break;

 case 128:
  atomic64_inc(&abt_stats->fw_tmo);
  break;

 case 130:
  atomic64_inc(&abt_stats->io_not_found);
  break;

 default:
  atomic64_inc(&abt_stats->fail);
  break;
 }
}
