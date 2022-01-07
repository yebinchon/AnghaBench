
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct HAL_VERSION {int CUTVersion; int VendorType; int ChipType; } ;
struct hal_data_8188e {struct HAL_VERSION VersionID; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int CHIP_VENDOR_TSMC ;
 int CHIP_VENDOR_UMC ;
 int CHIP_VER_RTL_MASK ;
 int CHIP_VER_RTL_SHIFT ;
 int NORMAL_CHIP ;
 int REG_SYS_CFG ;
 int RTL_ID ;
 int TEST_CHIP ;
 int VENDOR_ID ;
 int dump_chip_info (struct HAL_VERSION) ;
 int usb_read32 (struct adapter*,int ) ;

void rtw_hal_read_chip_version(struct adapter *padapter)
{
 u32 value32;
 struct HAL_VERSION ChipVersion;
 struct hal_data_8188e *pHalData = padapter->HalData;

 value32 = usb_read32(padapter, REG_SYS_CFG);
 ChipVersion.ChipType = ((value32 & RTL_ID) ? TEST_CHIP : NORMAL_CHIP);
 ChipVersion.VendorType = ((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : CHIP_VENDOR_TSMC);
 ChipVersion.CUTVersion = (value32 & CHIP_VER_RTL_MASK)>>CHIP_VER_RTL_SHIFT;

 dump_chip_info(ChipVersion);

 pHalData->VersionID = ChipVersion;
}
