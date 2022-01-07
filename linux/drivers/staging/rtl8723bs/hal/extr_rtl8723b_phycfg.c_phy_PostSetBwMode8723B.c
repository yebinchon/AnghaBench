
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int CurrentChannelBW; int nCur40MhzPrimeSC; } ;
struct adapter {int dummy; } ;


 int BIT26 ;
 int BIT27 ;
 int BIT30 ;
 int BIT31 ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HAL_PRIME_CHNL_OFFSET_LOWER ;
 int PHY_RF6052SetBandwidth8723B (struct adapter*,int) ;
 int PHY_SetBBReg (struct adapter*,int,int,int) ;
 int REG_DATA_SC_8723B ;
 int bCCKSideBand ;
 int bRFMOD ;
 int phy_GetSecondaryChnl_8723B (struct adapter*) ;
 int phy_SetRegBW_8723B (struct adapter*,int) ;
 int rCCK0_System ;
 int rFPGA0_RFMOD ;
 int rFPGA1_RFMOD ;
 int rOFDM0_TxPseudoNoiseWgt ;
 int rOFDM1_LSTF ;
 int rtw_write8 (struct adapter*,int ,int ) ;

__attribute__((used)) static void phy_PostSetBwMode8723B(struct adapter *Adapter)
{
 u8 SubChnlNum = 0;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);



 phy_SetRegBW_8723B(Adapter, pHalData->CurrentChannelBW);


 SubChnlNum = phy_GetSecondaryChnl_8723B(Adapter);
 rtw_write8(Adapter, REG_DATA_SC_8723B, SubChnlNum);




 switch (pHalData->CurrentChannelBW) {

 case 129:
  PHY_SetBBReg(Adapter, rFPGA0_RFMOD, bRFMOD, 0x0);

  PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);



  PHY_SetBBReg(Adapter, rOFDM0_TxPseudoNoiseWgt, (BIT31|BIT30), 0x0);
  break;


 case 128:
  PHY_SetBBReg(Adapter, rFPGA0_RFMOD, bRFMOD, 0x1);

  PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x1);


  PHY_SetBBReg(Adapter, rCCK0_System, bCCKSideBand, (pHalData->nCur40MhzPrimeSC>>1));

  PHY_SetBBReg(Adapter, rOFDM1_LSTF, 0xC00, pHalData->nCur40MhzPrimeSC);



  PHY_SetBBReg(Adapter, 0x818, (BIT26|BIT27), (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);

  break;

 default:


  break;
 }


 PHY_RF6052SetBandwidth8723B(Adapter, pHalData->CurrentChannelBW);
}
