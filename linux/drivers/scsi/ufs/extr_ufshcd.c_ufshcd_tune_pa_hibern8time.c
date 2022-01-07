
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int HIBERN8TIME_UNIT_US ;
 int PA_HIBERN8TIME ;
 int PA_HIBERN8_TIME_UNIT_US ;
 int RX_HIBERN8TIME_CAPABILITY ;
 int TX_HIBERN8TIME_CAPABILITY ;
 int UIC_ARG_MIB (int ) ;
 int UIC_ARG_MIB_SEL (int ,int ) ;
 int UIC_ARG_MPHY_RX_GEN_SEL_INDEX (int ) ;
 int UIC_ARG_MPHY_TX_GEN_SEL_INDEX (int ) ;
 int max (int,int) ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_dme_peer_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;

__attribute__((used)) static int ufshcd_tune_pa_hibern8time(struct ufs_hba *hba)
{
 int ret = 0;
 u32 local_tx_hibern8_time_cap = 0, peer_rx_hibern8_time_cap = 0;
 u32 max_hibern8_time, tuned_pa_hibern8time;

 ret = ufshcd_dme_get(hba,
        UIC_ARG_MIB_SEL(TX_HIBERN8TIME_CAPABILITY,
     UIC_ARG_MPHY_TX_GEN_SEL_INDEX(0)),
      &local_tx_hibern8_time_cap);
 if (ret)
  goto out;

 ret = ufshcd_dme_peer_get(hba,
      UIC_ARG_MIB_SEL(RX_HIBERN8TIME_CAPABILITY,
     UIC_ARG_MPHY_RX_GEN_SEL_INDEX(0)),
      &peer_rx_hibern8_time_cap);
 if (ret)
  goto out;

 max_hibern8_time = max(local_tx_hibern8_time_cap,
          peer_rx_hibern8_time_cap);

 tuned_pa_hibern8time = ((max_hibern8_time * HIBERN8TIME_UNIT_US)
    / PA_HIBERN8_TIME_UNIT_US);
 ret = ufshcd_dme_set(hba, UIC_ARG_MIB(PA_HIBERN8TIME),
        tuned_pa_hibern8time);
out:
 return ret;
}
