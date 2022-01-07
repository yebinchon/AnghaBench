
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct odm_phy_info {int* rx_mimo_signal_quality; int rx_pwd_ba11; int bt_rx_rssi_percentage; int signal_quality; int* rx_mimo_signal_strength; int SignalStrength; int signal_strength; void* recv_signal_power; void* rx_power; scalar_t__* rx_snr; void** rx_pwr; } ;
struct odm_packet_info {scalar_t__ data_rate; } ;
typedef void* s8 ;
typedef scalar_t__ s32 ;
struct TYPE_9__ {scalar_t__* RxSNRdB; int NumQryPhyStatusOFDM; int NumQryPhyStatusCCK; } ;
struct TYPE_11__ {int RFPathRxEnable; TYPE_2__ PhyDbgInfo; int bInHctTest; } ;
struct TYPE_10__ {int cck_agc_rpt_ofdm_cfosho_a; int cck_sig_qual_ofdm_pwdb_all; int* path_rxsnr; int path_cfotail; int * stream_rxevm; TYPE_1__* path_agc; } ;
struct TYPE_8__ {int gain; } ;
typedef TYPE_3__* PPHY_STATUS_RPT_8192CD_T ;
typedef TYPE_4__* PDM_ODM_T ;


 int BIT (int) ;
 scalar_t__ DESC_RATE11M ;
 scalar_t__ DESC_RATEMCS15 ;
 scalar_t__ DESC_RATEMCS8 ;
 int ODM_ParsingCFO (TYPE_4__*,struct odm_packet_info*,int ) ;
 size_t ODM_RF_PATH_A ;
 size_t ODM_RF_PATH_B ;
 int ODM_RF_PATH_MAX ;
 void* odm_CCKRSSI_8723B (int,int) ;
 int odm_EVMdbToPercentage (int ) ;
 int odm_QueryRxPwrPercentage (void*) ;
 scalar_t__ odm_SignalScaleMapping (TYPE_4__*,int) ;

__attribute__((used)) static void odm_RxPhyStatus92CSeries_Parsing(
 PDM_ODM_T pDM_Odm,
 struct odm_phy_info *pPhyInfo,
 u8 *pPhyStatus,
 struct odm_packet_info *pPktinfo
)
{
 u8 i, Max_spatial_stream;
 s8 rx_pwr[4], rx_pwr_all = 0;
 u8 EVM, PWDB_ALL = 0, PWDB_ALL_BT;
 u8 RSSI, total_rssi = 0;
 bool isCCKrate = 0;
 u8 rf_rx_num = 0;
 u8 LNA_idx, VGA_idx;
 PPHY_STATUS_RPT_8192CD_T pPhyStaRpt = (PPHY_STATUS_RPT_8192CD_T)pPhyStatus;

 isCCKrate = pPktinfo->data_rate <= DESC_RATE11M;
 pPhyInfo->rx_mimo_signal_quality[ODM_RF_PATH_A] = -1;
 pPhyInfo->rx_mimo_signal_quality[ODM_RF_PATH_B] = -1;


 if (isCCKrate) {
  u8 cck_agc_rpt;

  pDM_Odm->PhyDbgInfo.NumQryPhyStatusCCK++;





  cck_agc_rpt = pPhyStaRpt->cck_agc_rpt_ofdm_cfosho_a ;



  LNA_idx = ((cck_agc_rpt & 0xE0)>>5);
  VGA_idx = (cck_agc_rpt & 0x1F);
  rx_pwr_all = odm_CCKRSSI_8723B(LNA_idx, VGA_idx);
  PWDB_ALL = odm_QueryRxPwrPercentage(rx_pwr_all);
  if (PWDB_ALL > 100)
   PWDB_ALL = 100;

  pPhyInfo->rx_pwd_ba11 = PWDB_ALL;
  pPhyInfo->bt_rx_rssi_percentage = PWDB_ALL;
  pPhyInfo->recv_signal_power = rx_pwr_all;




  {
   u8 SQ, SQ_rpt;

   if (pPhyInfo->rx_pwd_ba11 > 40 && !pDM_Odm->bInHctTest)
    SQ = 100;
   else {
    SQ_rpt = pPhyStaRpt->cck_sig_qual_ofdm_pwdb_all;

    if (SQ_rpt > 64)
     SQ = 0;
    else if (SQ_rpt < 20)
     SQ = 100;
    else
     SQ = ((64-SQ_rpt) * 100) / 44;

   }


   pPhyInfo->signal_quality = SQ;
   pPhyInfo->rx_mimo_signal_quality[ODM_RF_PATH_A] = SQ;
   pPhyInfo->rx_mimo_signal_quality[ODM_RF_PATH_B] = -1;
  }
 } else {
  pDM_Odm->PhyDbgInfo.NumQryPhyStatusOFDM++;





  for (i = ODM_RF_PATH_A; i < ODM_RF_PATH_MAX; i++) {

   if (pDM_Odm->RFPathRxEnable & BIT(i))
    rf_rx_num++;



   rx_pwr[i] = ((pPhyStaRpt->path_agc[i].gain&0x3F)*2) - 110;


   pPhyInfo->rx_pwr[i] = rx_pwr[i];


   RSSI = odm_QueryRxPwrPercentage(rx_pwr[i]);
   total_rssi += RSSI;


   pPhyInfo->rx_mimo_signal_strength[i] = (u8) RSSI;


   pPhyInfo->rx_snr[i] = pDM_Odm->PhyDbgInfo.RxSNRdB[i] = (s32)(pPhyStaRpt->path_rxsnr[i]/2);
  }





  rx_pwr_all = (((pPhyStaRpt->cck_sig_qual_ofdm_pwdb_all) >> 1)&0x7f)-110;

  PWDB_ALL_BT = PWDB_ALL = odm_QueryRxPwrPercentage(rx_pwr_all);


  pPhyInfo->rx_pwd_ba11 = PWDB_ALL;

  pPhyInfo->bt_rx_rssi_percentage = PWDB_ALL_BT;
  pPhyInfo->rx_power = rx_pwr_all;
  pPhyInfo->recv_signal_power = rx_pwr_all;

  {



   if (pPktinfo->data_rate >= DESC_RATEMCS8 && pPktinfo->data_rate <= DESC_RATEMCS15)
    Max_spatial_stream = 2;
   else
    Max_spatial_stream = 1;

   for (i = 0; i < Max_spatial_stream; i++) {



    EVM = odm_EVMdbToPercentage((pPhyStaRpt->stream_rxevm[i]));





    {
     if (i == ODM_RF_PATH_A)
      pPhyInfo->signal_quality = (u8)(EVM & 0xff);

     pPhyInfo->rx_mimo_signal_quality[i] = (u8)(EVM & 0xff);
    }
   }
  }

  ODM_ParsingCFO(pDM_Odm, pPktinfo, pPhyStaRpt->path_cfotail);

 }



 if (isCCKrate) {



  pPhyInfo->signal_strength = (u8)(odm_SignalScaleMapping(pDM_Odm, PWDB_ALL));

 } else {
  if (rf_rx_num != 0) {




   pPhyInfo->signal_strength = (u8)(odm_SignalScaleMapping(pDM_Odm, total_rssi /= rf_rx_num));

  }
 }



}
