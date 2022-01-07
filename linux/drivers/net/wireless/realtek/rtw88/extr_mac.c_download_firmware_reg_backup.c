
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int len; int val; void* reg; } ;


 size_t BIT_DIS_TSF_UDT ;
 size_t BIT_EN_BCN_FUNCTION ;
 int BIT_H2CQ_FULL ;
 size_t BIT_HCI_TXDMA_EN ;
 int BIT_LD_RQPN ;
 size_t BIT_TXDMA_EN ;
 size_t DLFW_RESTORE_REG_NUM ;
 void* REG_BCN_CTRL ;
 void* REG_CR ;
 void* REG_FIFOPAGE_INFO_1 ;
 void* REG_H2CQ_CSR ;
 void* REG_RQPN_CTRL_2 ;
 void* REG_TXDMA_PQ_MAP ;
 int RTW_DMA_MAPPING_HIGH ;
 int WARN (int,char*) ;
 int rtw_read16 (struct rtw_dev*,void*) ;
 int rtw_read32 (struct rtw_dev*,void*) ;
 void* rtw_read8 (struct rtw_dev*,void*) ;
 int rtw_write16 (struct rtw_dev*,void*,int) ;
 int rtw_write32 (struct rtw_dev*,void*,int) ;
 int rtw_write8 (struct rtw_dev*,void*,size_t) ;

__attribute__((used)) static void download_firmware_reg_backup(struct rtw_dev *rtwdev,
      struct rtw_backup_info *bckp)
{
 u8 tmp;
 u8 bckp_idx = 0;


 bckp[bckp_idx].len = 1;
 bckp[bckp_idx].reg = REG_TXDMA_PQ_MAP + 1;
 bckp[bckp_idx].val = rtw_read8(rtwdev, REG_TXDMA_PQ_MAP + 1);
 bckp_idx++;
 tmp = RTW_DMA_MAPPING_HIGH << 6;
 rtw_write8(rtwdev, REG_TXDMA_PQ_MAP + 1, tmp);


 bckp[bckp_idx].len = 1;
 bckp[bckp_idx].reg = REG_CR;
 bckp[bckp_idx].val = rtw_read8(rtwdev, REG_CR);
 bckp_idx++;
 bckp[bckp_idx].len = 4;
 bckp[bckp_idx].reg = REG_H2CQ_CSR;
 bckp[bckp_idx].val = BIT_H2CQ_FULL;
 bckp_idx++;
 tmp = BIT_HCI_TXDMA_EN | BIT_TXDMA_EN;
 rtw_write8(rtwdev, REG_CR, tmp);
 rtw_write32(rtwdev, REG_H2CQ_CSR, BIT_H2CQ_FULL);


 bckp[bckp_idx].len = 2;
 bckp[bckp_idx].reg = REG_FIFOPAGE_INFO_1;
 bckp[bckp_idx].val = rtw_read16(rtwdev, REG_FIFOPAGE_INFO_1);
 bckp_idx++;
 bckp[bckp_idx].len = 4;
 bckp[bckp_idx].reg = REG_RQPN_CTRL_2;
 bckp[bckp_idx].val = rtw_read32(rtwdev, REG_RQPN_CTRL_2) | BIT_LD_RQPN;
 bckp_idx++;
 rtw_write16(rtwdev, REG_FIFOPAGE_INFO_1, 0x200);
 rtw_write32(rtwdev, REG_RQPN_CTRL_2, bckp[bckp_idx - 1].val);


 tmp = rtw_read8(rtwdev, REG_BCN_CTRL);
 bckp[bckp_idx].len = 1;
 bckp[bckp_idx].reg = REG_BCN_CTRL;
 bckp[bckp_idx].val = tmp;
 bckp_idx++;
 tmp = (u8)((tmp & (~BIT_EN_BCN_FUNCTION)) | BIT_DIS_TSF_UDT);
 rtw_write8(rtwdev, REG_BCN_CTRL, tmp);

 WARN(bckp_idx != DLFW_RESTORE_REG_NUM, "wrong backup number\n");
}
