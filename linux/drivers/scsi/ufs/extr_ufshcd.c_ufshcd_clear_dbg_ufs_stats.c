
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_hibern8_exit_tstamp; scalar_t__ hibern8_exit_cnt; } ;
struct ufs_hba {scalar_t__ req_abort_count; TYPE_1__ ufs_stats; } ;


 int ktime_set (int ,int ) ;

__attribute__((used)) static void ufshcd_clear_dbg_ufs_stats(struct ufs_hba *hba)
{
 hba->ufs_stats.hibern8_exit_cnt = 0;
 hba->ufs_stats.last_hibern8_exit_tstamp = ktime_set(0, 0);
 hba->req_abort_count = 0;
}
