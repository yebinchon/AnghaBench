
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_stats_info {scalar_t__ rxq_avg_depth; scalar_t__ txq_avg_depth; int rxq_size; int txq_size; int max_frame_size; scalar_t__ mac_add1; int version; } ;
struct bnx2i_hba {int max_cqes; int max_sqes; TYPE_2__* netdev; TYPE_1__* cnic; } ;
struct TYPE_4__ {int mtu; } ;
struct TYPE_3__ {int mac_addr; scalar_t__ stats_addr; } ;


 int DRV_MODULE_VERSION ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GET_STATS_64 (struct bnx2i_hba*,struct iscsi_stats_info*,int ) ;
 int memcpy (scalar_t__,int ,int ) ;
 int rx_bytes ;
 int rx_pdus ;
 int strlcpy (int ,int ,int) ;
 int tx_bytes ;
 int tx_pdus ;

int bnx2i_get_stats(void *handle)
{
 struct bnx2i_hba *hba = handle;
 struct iscsi_stats_info *stats;

 if (!hba)
  return -EINVAL;

 stats = (struct iscsi_stats_info *)hba->cnic->stats_addr;

 if (!stats)
  return -ENOMEM;

 strlcpy(stats->version, DRV_MODULE_VERSION, sizeof(stats->version));
 memcpy(stats->mac_add1 + 2, hba->cnic->mac_addr, ETH_ALEN);

 stats->max_frame_size = hba->netdev->mtu;
 stats->txq_size = hba->max_sqes;
 stats->rxq_size = hba->max_cqes;

 stats->txq_avg_depth = 0;
 stats->rxq_avg_depth = 0;

 GET_STATS_64(hba, stats, rx_pdus);
 GET_STATS_64(hba, stats, rx_bytes);

 GET_STATS_64(hba, stats, tx_pdus);
 GET_STATS_64(hba, stats, tx_bytes);

 return 0;
}
