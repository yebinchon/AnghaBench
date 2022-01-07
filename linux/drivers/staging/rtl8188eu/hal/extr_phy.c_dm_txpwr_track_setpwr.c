
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {int BbSwingFlagOfdm; int BbSwingFlagCck; int * pChannel; int Adapter; } ;


 int ODM_COMP_TX_PWR_TRACK ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;
 int phy_set_tx_power_level (int ,int ) ;

__attribute__((used)) static void dm_txpwr_track_setpwr(struct odm_dm_struct *dm_odm)
{
 if (dm_odm->BbSwingFlagOfdm || dm_odm->BbSwingFlagCck) {
  ODM_RT_TRACE(dm_odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
        ("dm_txpwr_track_setpwr CH=%d\n", *(dm_odm->pChannel)));
  phy_set_tx_power_level(dm_odm->Adapter, *(dm_odm->pChannel));
  dm_odm->BbSwingFlagOfdm = 0;
  dm_odm->BbSwingFlagCck = 0;
 }
}
