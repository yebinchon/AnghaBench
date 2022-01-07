
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int BIT_CHECK_SUM_OK ;
 int BIT_FW_DW_RDY ;
 int BIT_MCUFWDL_EN ;
 int BTI_PAGE_OVF ;
 int REG_MCUFW_CTRL ;
 int REG_TXDMA_STATUS ;
 int rtw_read16 (struct rtw_dev*,int ) ;
 int rtw_write16 (struct rtw_dev*,int ,int) ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void download_firmware_end_flow(struct rtw_dev *rtwdev)
{
 u16 fw_ctrl;

 rtw_write32(rtwdev, REG_TXDMA_STATUS, BTI_PAGE_OVF);


 fw_ctrl = rtw_read16(rtwdev, REG_MCUFW_CTRL);
 if ((fw_ctrl & BIT_CHECK_SUM_OK) != BIT_CHECK_SUM_OK)
  return;

 fw_ctrl = (fw_ctrl | BIT_FW_DW_RDY) & ~BIT_MCUFWDL_EN;
 rtw_write16(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
}
