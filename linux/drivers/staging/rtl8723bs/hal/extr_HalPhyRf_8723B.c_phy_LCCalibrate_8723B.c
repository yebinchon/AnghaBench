
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ SupportInterface; int PackageType; struct adapter* Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 scalar_t__ ODM_ITRF_SDIO ;
 int ODM_RF_PATH_A ;
 int ODM_RF_PATH_B ;
 int PHY_QueryRFReg (struct adapter*,int ,int,int ) ;
 int PHY_SetRFReg (struct adapter*,int ,int,int ,int) ;
 int REG_TXPAUSE ;
 int RF_AC ;
 int RF_CHNLBW ;
 int bMask12Bits ;
 int bRFRegOffsetMask ;
 int mdelay (int) ;
 int rtw_read8 (struct adapter*,int) ;
 int rtw_write8 (struct adapter*,int,int) ;

__attribute__((used)) static void phy_LCCalibrate_8723B(PDM_ODM_T pDM_Odm, bool is2T)
{
 u8 tmpReg;
 u32 RF_Amode = 0, RF_Bmode = 0, LC_Cal;
 struct adapter *padapter = pDM_Odm->Adapter;


 tmpReg = rtw_read8(pDM_Odm->Adapter, 0xd03);

 if ((tmpReg&0x70) != 0)
  rtw_write8(pDM_Odm->Adapter, 0xd03, tmpReg&0x8F);
 else
  rtw_write8(pDM_Odm->Adapter, REG_TXPAUSE, 0xFF);

 if ((tmpReg&0x70) != 0) {


  RF_Amode = PHY_QueryRFReg(padapter, ODM_RF_PATH_A, RF_AC, bMask12Bits);


  if (is2T)
   RF_Bmode = PHY_QueryRFReg(padapter, ODM_RF_PATH_B, RF_AC, bMask12Bits);



  PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_AC, bMask12Bits, (RF_Amode&0x8FFFF)|0x10000);


  if (is2T)
   PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_B, RF_AC, bMask12Bits, (RF_Bmode&0x8FFFF)|0x10000);
 }


 LC_Cal = PHY_QueryRFReg(padapter, ODM_RF_PATH_A, RF_CHNLBW, bMask12Bits);


 PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xB0, bRFRegOffsetMask, 0xDFBE0);
 PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_CHNLBW, bMask12Bits, LC_Cal|0x08000);

 mdelay(100);

 PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xB0, bRFRegOffsetMask, 0xDFFE0);


 if (pDM_Odm->SupportInterface == ODM_ITRF_SDIO && pDM_Odm->PackageType >= 0x2) {
  PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_CHNLBW, bMask12Bits, LC_Cal);
 }


 if ((tmpReg&0x70) != 0) {

  rtw_write8(pDM_Odm->Adapter, 0xd03, tmpReg);
  PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_AC, bMask12Bits, RF_Amode);


  if (is2T)
   PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_B, RF_AC, bMask12Bits, RF_Bmode);
 } else
  rtw_write8(pDM_Odm->Adapter, REG_TXPAUSE, 0x00);
}
