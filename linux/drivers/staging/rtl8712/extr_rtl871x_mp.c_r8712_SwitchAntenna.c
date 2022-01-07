
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int antenna_tx; int antenna_rx; } ;
struct _adapter {TYPE_1__ mppriv; } ;
struct R_ANTENNA_SELECT_CCK {int r_ccktx_enable; int r_cckrx_enable; int r_cckrx_enable_2; } ;





 int bMaskByte3 ;
 int rCCK0_AFESetting ;
 int rFPGA0_TxInfo ;
 int rFPGA0_XA_HSSIParameter2 ;
 int rFPGA0_XB_HSSIParameter2 ;
 int rFPGA1_TxInfo ;
 int rOFDM0_TRxPathEnable ;
 int rOFDM1_TRxPathEnable ;
 int set_bb_reg (struct _adapter*,int ,int,int) ;

void r8712_SwitchAntenna(struct _adapter *pAdapter)
{
 u32 ofdm_tx_en_val = 0, ofdm_tx_ant_sel_val = 0;
 u8 ofdm_rx_ant_sel_val = 0;
 u8 cck_ant_select_val = 0;
 u32 cck_ant_sel_val = 0;
 struct R_ANTENNA_SELECT_CCK *p_cck_txrx;

 p_cck_txrx = (struct R_ANTENNA_SELECT_CCK *)&cck_ant_select_val;

 switch (pAdapter->mppriv.antenna_tx) {
 case 130:

  set_bb_reg(pAdapter, rFPGA0_XA_HSSIParameter2, 0xe, 2);
  set_bb_reg(pAdapter, rFPGA0_XB_HSSIParameter2, 0xe, 1);
  ofdm_tx_en_val = 0x3;
  ofdm_tx_ant_sel_val = 0x11111111;
  p_cck_txrx->r_ccktx_enable = 0x8;
  break;
 case 128:
  set_bb_reg(pAdapter, rFPGA0_XA_HSSIParameter2, 0xe, 1);
  set_bb_reg(pAdapter, rFPGA0_XB_HSSIParameter2, 0xe, 2);
  ofdm_tx_en_val = 0x3;
  ofdm_tx_ant_sel_val = 0x22222222;
  p_cck_txrx->r_ccktx_enable = 0x4;
  break;
 case 129:
  set_bb_reg(pAdapter, rFPGA0_XA_HSSIParameter2, 0xe, 2);
  set_bb_reg(pAdapter, rFPGA0_XB_HSSIParameter2, 0xe, 2);
  ofdm_tx_en_val = 0x3;
  ofdm_tx_ant_sel_val = 0x3321333;
  p_cck_txrx->r_ccktx_enable = 0xC;
  break;
 default:
  break;
 }

 set_bb_reg(pAdapter, rFPGA1_TxInfo, 0xffffffff, ofdm_tx_ant_sel_val);

 set_bb_reg(pAdapter, rFPGA0_TxInfo, 0x0000000f, ofdm_tx_en_val);
 switch (pAdapter->mppriv.antenna_rx) {
 case 130:
  ofdm_rx_ant_sel_val = 0x1;
  p_cck_txrx->r_cckrx_enable = 0x0;
  p_cck_txrx->r_cckrx_enable_2 = 0x0;
  break;
 case 128:
  ofdm_rx_ant_sel_val = 0x2;
  p_cck_txrx->r_cckrx_enable = 0x1;
  p_cck_txrx->r_cckrx_enable_2 = 0x1;
  break;
 case 129:
  ofdm_rx_ant_sel_val = 0x3;
  p_cck_txrx->r_cckrx_enable = 0x0;
  p_cck_txrx->r_cckrx_enable_2 = 0x1;
  break;
 default:
  break;
 }

 set_bb_reg(pAdapter, rOFDM0_TRxPathEnable, 0x0000000f,
     ofdm_rx_ant_sel_val);

 set_bb_reg(pAdapter, rOFDM1_TRxPathEnable, 0x0000000f,
     ofdm_rx_ant_sel_val);

 cck_ant_sel_val = cck_ant_select_val;

 set_bb_reg(pAdapter, rCCK0_AFESetting, bMaskByte3, cck_ant_sel_val);
}
