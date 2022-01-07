
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_stats_info {int rxq_size; int txq_size; int version; } ;
struct cnic_dev {TYPE_1__* stats_addr; } ;
struct bnx2fc_hba {struct cnic_dev* cnic; } ;
struct TYPE_2__ {struct fcoe_stats_info fcoe_stat; } ;


 int BNX2FC_CQ_WQES_MAX ;
 int BNX2FC_SQ_WQES_MAX ;
 int BNX2FC_VERSION ;
 int EINVAL ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int bnx2fc_ulp_get_stats(void *handle)
{
 struct bnx2fc_hba *hba = handle;
 struct cnic_dev *cnic;
 struct fcoe_stats_info *stats_addr;

 if (!hba)
  return -EINVAL;

 cnic = hba->cnic;
 stats_addr = &cnic->stats_addr->fcoe_stat;
 if (!stats_addr)
  return -EINVAL;

 strncpy(stats_addr->version, BNX2FC_VERSION,
  sizeof(stats_addr->version));
 stats_addr->txq_size = BNX2FC_SQ_WQES_MAX;
 stats_addr->rxq_size = BNX2FC_CQ_WQES_MAX;

 return 0;
}
