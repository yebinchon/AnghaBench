
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lane_rx; int lane_tx; scalar_t__ hs_rate; void* pwr_tx; void* pwr_rx; void* gear_tx; void* gear_rx; } ;
struct ufs_hba {TYPE_1__ pwr_info; } ;


 void* SLOWAUTO_MODE ;
 void* UFS_PWM_G1 ;

__attribute__((used)) static void ufshcd_init_pwr_info(struct ufs_hba *hba)
{
 hba->pwr_info.gear_rx = UFS_PWM_G1;
 hba->pwr_info.gear_tx = UFS_PWM_G1;
 hba->pwr_info.lane_rx = 1;
 hba->pwr_info.lane_tx = 1;
 hba->pwr_info.pwr_rx = SLOWAUTO_MODE;
 hba->pwr_info.pwr_tx = SLOWAUTO_MODE;
 hba->pwr_info.hs_rate = 0;
}
