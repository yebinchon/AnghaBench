
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;


 int BIT_DDMACH0_CHKSUM_STS ;
 int BIT_DMEM_CHKSUM_OK ;
 int BIT_DMEM_DW_OK ;
 int BIT_IMEM_CHKSUM_OK ;
 int BIT_IMEM_DW_OK ;
 scalar_t__ OCPBASE_DMEM_88XX ;
 int REG_DDMA_CH0CTRL ;
 int REG_MCUFW_CTRL ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_read32 (struct rtw_dev*,int ) ;
 int rtw_read8 (struct rtw_dev*,int ) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;

__attribute__((used)) static bool
check_fw_checksum(struct rtw_dev *rtwdev, u32 addr)
{
 u8 fw_ctrl;

 fw_ctrl = rtw_read8(rtwdev, REG_MCUFW_CTRL);

 if (rtw_read32(rtwdev, REG_DDMA_CH0CTRL) & BIT_DDMACH0_CHKSUM_STS) {
  if (addr < OCPBASE_DMEM_88XX) {
   fw_ctrl |= BIT_IMEM_DW_OK;
   fw_ctrl &= ~BIT_IMEM_CHKSUM_OK;
   rtw_write8(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
  } else {
   fw_ctrl |= BIT_DMEM_DW_OK;
   fw_ctrl &= ~BIT_DMEM_CHKSUM_OK;
   rtw_write8(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
  }

  rtw_err(rtwdev, "invalid fw checksum\n");

  return 0;
 }

 if (addr < OCPBASE_DMEM_88XX) {
  fw_ctrl |= (BIT_IMEM_DW_OK | BIT_IMEM_CHKSUM_OK);
  rtw_write8(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
 } else {
  fw_ctrl |= (BIT_DMEM_DW_OK | BIT_DMEM_CHKSUM_OK);
  rtw_write8(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
 }

 return 1;
}
