
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int CUTVersion; int ROMVer; int VendorType; int RFType; int ChipType; int ICType; } ;
struct hal_com_data {int rf_type; TYPE_1__ VersionID; int PolarityCtl; int MultiFunc; int RegulatorMode; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__ HAL_VERSION ;


 int BT_FUNC_EN ;
 int CHIP_8723B ;
 int CHIP_VENDOR_TSMC ;
 int CHIP_VENDOR_UMC ;
 int CHIP_VER_RTL_MASK ;
 int CHIP_VER_RTL_SHIFT ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int GPS_FUNC_EN ;
 scalar_t__ IS_1T2R (TYPE_1__) ;
 scalar_t__ IS_2T2R (TYPE_1__) ;
 int MSG_8192C (char*,int ) ;
 int NORMAL_CHIP ;
 int REG_GPIO_OUTSTS ;
 int REG_MULTI_FUNC_CTRL ;
 int REG_SYS_CFG ;
 int RF_1T1R ;
 int RF_1T2R ;
 int RF_2T2R ;
 int RF_RL_ID ;
 int RF_TYPE_1T1R ;
 int RTL_ID ;
 int RT_LDO_REGULATOR ;
 int RT_MULTI_FUNC_BT ;
 int RT_MULTI_FUNC_GPS ;
 int RT_MULTI_FUNC_NONE ;
 int RT_MULTI_FUNC_WIFI ;
 int RT_POLARITY_HIGH_ACT ;
 int RT_POLARITY_LOW_ACT ;
 int RT_SWITCHING_REGULATOR ;
 int SPS_SEL ;
 int TEST_CHIP ;
 int VENDOR_ID ;
 int WL_FUNC_EN ;
 int WL_HWPDN_SL ;
 int dump_chip_info (TYPE_1__) ;
 int rtw_read32 (struct adapter*,int ) ;

__attribute__((used)) static HAL_VERSION ReadChipVersion8723B(struct adapter *padapter)
{
 u32 value32;
 HAL_VERSION ChipVersion;
 struct hal_com_data *pHalData;


 pHalData = GET_HAL_DATA(padapter);

 value32 = rtw_read32(padapter, REG_SYS_CFG);
 ChipVersion.ICType = CHIP_8723B;
 ChipVersion.ChipType = ((value32 & RTL_ID) ? TEST_CHIP : NORMAL_CHIP);
 ChipVersion.RFType = RF_TYPE_1T1R;
 ChipVersion.VendorType = ((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : CHIP_VENDOR_TSMC);
 ChipVersion.CUTVersion = (value32 & CHIP_VER_RTL_MASK)>>CHIP_VER_RTL_SHIFT;


 pHalData->RegulatorMode = ((value32 & SPS_SEL) ? RT_LDO_REGULATOR : RT_SWITCHING_REGULATOR);

 value32 = rtw_read32(padapter, REG_GPIO_OUTSTS);
 ChipVersion.ROMVer = ((value32 & RF_RL_ID) >> 20);


 pHalData->MultiFunc = RT_MULTI_FUNC_NONE;
 value32 = rtw_read32(padapter, REG_MULTI_FUNC_CTRL);
 pHalData->MultiFunc |= ((value32 & WL_FUNC_EN) ? RT_MULTI_FUNC_WIFI : 0);
 pHalData->MultiFunc |= ((value32 & BT_FUNC_EN) ? RT_MULTI_FUNC_BT : 0);
 pHalData->MultiFunc |= ((value32 & GPS_FUNC_EN) ? RT_MULTI_FUNC_GPS : 0);
 pHalData->PolarityCtl = ((value32 & WL_HWPDN_SL) ? RT_POLARITY_HIGH_ACT : RT_POLARITY_LOW_ACT);

 dump_chip_info(ChipVersion);

 pHalData->VersionID = ChipVersion;
 if (IS_1T2R(ChipVersion))
  pHalData->rf_type = RF_1T2R;
 else if (IS_2T2R(ChipVersion))
  pHalData->rf_type = RF_2T2R;
 else
  pHalData->rf_type = RF_1T1R;

 MSG_8192C("RF_Type is %x!!\n", pHalData->rf_type);

 return ChipVersion;
}
