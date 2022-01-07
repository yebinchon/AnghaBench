
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct odm_dm_struct {int bIsMPChip; int BbSwingIdxOfdm; int BbSwingIdxOfdmCurrent; int BbSwingFlagOfdm; int SupportAbility; int AntDivType; int bWIFITest; int PatchID; int CutVersion; int SupportICType; int SupportPlatform; struct adapter* Adapter; } ;
struct TYPE_3__ {scalar_t__ ChipType; } ;
struct dm_priv {int InitODMFlag; } ;
struct hal_data_8188e {int TRxAntDivType; int CustomerID; TYPE_1__ VersionID; struct odm_dm_struct odmpriv; struct dm_priv dmpriv; } ;
struct TYPE_4__ {int wifi_spec; } ;
struct adapter {TYPE_2__ registrypriv; struct hal_data_8188e* HalData; } ;


 scalar_t__ NORMAL_CHIP ;
 int ODM_CE ;
 int ODM_CUT_A ;
 int ODM_RF_CALIBRATION ;
 int ODM_RF_TX_PWR_TRACK ;
 int ODM_RTL8188E ;
 int memset (struct odm_dm_struct*,int ,int) ;

__attribute__((used)) static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
{
 struct hal_data_8188e *hal_data = Adapter->HalData;
 struct dm_priv *pdmpriv = &hal_data->dmpriv;
 struct odm_dm_struct *dm_odm = &(hal_data->odmpriv);


 memset(dm_odm, 0, sizeof(*dm_odm));

 dm_odm->Adapter = Adapter;
 dm_odm->SupportPlatform = ODM_CE;
 dm_odm->SupportICType = ODM_RTL8188E;
 dm_odm->CutVersion = ODM_CUT_A;
 dm_odm->bIsMPChip = hal_data->VersionID.ChipType == NORMAL_CHIP;
 dm_odm->PatchID = hal_data->CustomerID;
 dm_odm->bWIFITest = Adapter->registrypriv.wifi_spec;

 dm_odm->AntDivType = hal_data->TRxAntDivType;



 dm_odm->BbSwingIdxOfdm = 12;
 dm_odm->BbSwingIdxOfdmCurrent = 12;
 dm_odm->BbSwingFlagOfdm = 0;

 pdmpriv->InitODMFlag = ODM_RF_CALIBRATION |
    ODM_RF_TX_PWR_TRACK;

 dm_odm->SupportAbility = pdmpriv->InitODMFlag;
}
