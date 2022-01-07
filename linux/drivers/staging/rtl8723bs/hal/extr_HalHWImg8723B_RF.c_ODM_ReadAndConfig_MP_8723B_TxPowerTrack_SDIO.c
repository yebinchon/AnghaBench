
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int DeltaSwingTableIdx_5GB_N; int DeltaSwingTableIdx_5GB_P; int DeltaSwingTableIdx_5GA_N; int DeltaSwingTableIdx_5GA_P; int DeltaSwingTableIdx_2GCCKB_N; int DeltaSwingTableIdx_2GCCKB_P; int DeltaSwingTableIdx_2GCCKA_N; int DeltaSwingTableIdx_2GCCKA_P; int DeltaSwingTableIdx_2GB_N; int DeltaSwingTableIdx_2GB_P; int DeltaSwingTableIdx_2GA_N; int DeltaSwingTableIdx_2GA_P; } ;
struct TYPE_6__ {TYPE_1__ RFCalibrateInfo; } ;
typedef TYPE_1__* PODM_RF_CAL_T ;
typedef TYPE_2__* PDM_ODM_T ;


 int DELTA_SWINGIDX_SIZE ;
 int ODM_COMP_INIT ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_2__*,int ,int ,char*) ;
 int gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_5GA_N_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_5GA_P_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_5GB_N_TxPowerTrack_SDIO_8723B ;
 int gDeltaSwingTableIdx_MP_5GB_P_TxPowerTrack_SDIO_8723B ;
 int memcpy (int ,int ,int) ;

void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(PDM_ODM_T pDM_Odm)
{
 PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_INIT,
  ODM_DBG_LOUD,
  ("===> ODM_ReadAndConfig_MP_MP_8723B\n")
 );


 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GA_P,
  gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GA_N,
  gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GB_P,
  gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GB_N,
  gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );

 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_P,
  gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_N,
  gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKB_P,
  gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKB_N,
  gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE
 );

 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_5GA_P,
  gDeltaSwingTableIdx_MP_5GA_P_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE*3
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_5GA_N,
  gDeltaSwingTableIdx_MP_5GA_N_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE*3
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_5GB_P,
  gDeltaSwingTableIdx_MP_5GB_P_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE*3
 );
 memcpy(
  pRFCalibrateInfo->DeltaSwingTableIdx_5GB_N,
  gDeltaSwingTableIdx_MP_5GB_N_TxPowerTrack_SDIO_8723B,
  DELTA_SWINGIDX_SIZE*3
 );
}
