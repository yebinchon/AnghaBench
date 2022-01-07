
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vnt_rsp_card_init {int net_addr; int rf_type; } ;
struct vnt_cmd_card_init {int long_retry_limit; int short_retry_limit; int * sw_net_addr; int exist_sw_net_addr; int init_class; } ;
struct vnt_private {int local_id; int power; scalar_t__ cck_pwr; scalar_t__* eeprom; scalar_t__ ofdm_pwr_g; scalar_t__* cck_pwr_tbl; scalar_t__* ofdm_pwr_tbl; int ofdm_pwr_a; scalar_t__* ofdm_a_pwr_tbl; int tx_rx_ant_inv; int rx_antenna_sel; scalar_t__ bb_type; int short_slot_time; int radio_ctl; TYPE_1__* usb; int * current_net_addr; int permanent_net_addr; int rf_type; int auto_fb_ctrl; void* rx_antenna_mode; void* tx_antenna_mode; int top_cck_basic_rate; int top_ofdm_basic_rate; int long_retry_limit; int short_retry_limit; int exist_sw_net_addr; int packet_type; struct vnt_rsp_card_init init_response; struct vnt_cmd_card_init init_command; } ;
struct TYPE_2__ {int dev; } ;


 void* ANT_A ;
 void* ANT_B ;
 int AUTO_FB_0 ;
 scalar_t__ BB_TYPE_11A ;
 scalar_t__ BB_TYPE_11G ;
 int CB_MAX_CHANNEL_5G ;
 int DEVICE_INIT_COLD ;
 int EEP_ANTENNA_AUX ;
 int EEP_ANTENNA_MAIN ;
 int EEP_ANTINV ;
 size_t EEP_OFS_ANTENNA ;
 size_t EEP_OFS_CALIB_RX_IQ ;
 size_t EEP_OFS_CALIB_TX_DC ;
 size_t EEP_OFS_CALIB_TX_IQ ;
 int EEP_OFS_CCK_PWR_TBL ;
 size_t EEP_OFS_MAJOR_VER ;
 size_t EEP_OFS_MINOR_VER ;
 int EEP_OFS_OFDMA_PWR_TBL ;
 int EEP_OFS_OFDM_PWR_TBL ;
 size_t EEP_OFS_PWR_CCK ;
 size_t EEP_OFS_PWR_OFDMG ;
 size_t EEP_OFS_RADIOCTL ;
 int EEP_RADIOCTL_ENABLE ;
 int GPIO3_DATA ;
 int GPIO3_INTMD ;
 int LEDSTS_SLOW ;
 int LEDSTS_STS ;
 int LEDSTS_TMLEN ;
 int MAC_REG_GPIOCTL0 ;
 int MAC_REG_GPIOCTL1 ;
 int MAC_REG_LOCALID ;
 int MESSAGE_REQUEST_BBREG ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_CARDINIT ;
 int MESSAGE_TYPE_INIT_RSP ;
 int MESSAGE_TYPE_READ ;
 int RATE_1M ;
 int RATE_24M ;
 int RF_VT3226D0 ;
 int dev_dbg (int *,char*,...) ;
 int ether_addr_copy (int *,int ) ;
 int memcpy (int ,int ,int) ;
 int vnt_check_firmware_version (struct vnt_private*) ;
 int vnt_control_in (struct vnt_private*,int ,int ,int ,int,int*) ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,int*) ;
 int vnt_control_out_u8 (struct vnt_private*,int ,int,int) ;
 int vnt_download_firmware (struct vnt_private*) ;
 int vnt_firmware_branch_to_sram (struct vnt_private*) ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int) ;
 int vnt_mac_set_led (struct vnt_private*,int ,int) ;
 int vnt_radio_power_on (struct vnt_private*) ;
 int vnt_set_antenna_mode (struct vnt_private*,void*) ;
 int vnt_set_short_slot_time (struct vnt_private*) ;
 int vnt_vt3184_init (struct vnt_private*) ;

__attribute__((used)) static int vnt_init_registers(struct vnt_private *priv)
{
 int ret = 0;
 struct vnt_cmd_card_init *init_cmd = &priv->init_command;
 struct vnt_rsp_card_init *init_rsp = &priv->init_response;
 u8 antenna;
 int ii;
 u8 tmp;
 u8 calib_tx_iq = 0, calib_tx_dc = 0, calib_rx_iq = 0;

 dev_dbg(&priv->usb->dev, "---->INIbInitAdapter. [%d][%d]\n",
  DEVICE_INIT_COLD, priv->packet_type);

 ret = vnt_check_firmware_version(priv);
 if (ret) {
  ret = vnt_download_firmware(priv);
  if (ret) {
   dev_dbg(&priv->usb->dev,
    "Could not download firmware: %d.\n", ret);
   goto end;
  }

  ret = vnt_firmware_branch_to_sram(priv);
  if (ret) {
   dev_dbg(&priv->usb->dev,
    "Could not branch to SRAM: %d.\n", ret);
   goto end;
  }
 }

 ret = vnt_vt3184_init(priv);
 if (ret) {
  dev_dbg(&priv->usb->dev, "vnt_vt3184_init fail\n");
  goto end;
 }

 init_cmd->init_class = DEVICE_INIT_COLD;
 init_cmd->exist_sw_net_addr = priv->exist_sw_net_addr;
 for (ii = 0; ii < 6; ii++)
  init_cmd->sw_net_addr[ii] = priv->current_net_addr[ii];
 init_cmd->short_retry_limit = priv->short_retry_limit;
 init_cmd->long_retry_limit = priv->long_retry_limit;


 ret = vnt_control_out(priv, MESSAGE_TYPE_CARDINIT, 0, 0,
         sizeof(struct vnt_cmd_card_init),
         (u8 *)init_cmd);
 if (ret) {
  dev_dbg(&priv->usb->dev, "Issue Card init fail\n");
  goto end;
 }

 ret = vnt_control_in(priv, MESSAGE_TYPE_INIT_RSP, 0, 0,
        sizeof(struct vnt_rsp_card_init),
        (u8 *)init_rsp);
 if (ret) {
  dev_dbg(&priv->usb->dev, "Cardinit request in status fail!\n");
  goto end;
 }


 ret = vnt_control_in(priv, MESSAGE_TYPE_READ, MAC_REG_LOCALID,
        MESSAGE_REQUEST_MACREG, 1, &priv->local_id);
 if (ret)
  goto end;



 priv->top_ofdm_basic_rate = RATE_24M;
 priv->top_cck_basic_rate = RATE_1M;


 priv->power = 0xFF;

 priv->cck_pwr = priv->eeprom[EEP_OFS_PWR_CCK];
 priv->ofdm_pwr_g = priv->eeprom[EEP_OFS_PWR_OFDMG];

 for (ii = 0; ii < 14; ii++) {
  priv->cck_pwr_tbl[ii] =
   priv->eeprom[ii + EEP_OFS_CCK_PWR_TBL];
  if (priv->cck_pwr_tbl[ii] == 0)
   priv->cck_pwr_tbl[ii] = priv->cck_pwr;

  priv->ofdm_pwr_tbl[ii] =
    priv->eeprom[ii + EEP_OFS_OFDM_PWR_TBL];
  if (priv->ofdm_pwr_tbl[ii] == 0)
   priv->ofdm_pwr_tbl[ii] = priv->ofdm_pwr_g;
 }





 for (ii = 11; ii < 14; ii++) {
  priv->cck_pwr_tbl[ii] = priv->cck_pwr_tbl[10];
  priv->ofdm_pwr_tbl[ii] = priv->ofdm_pwr_tbl[10];
 }

 priv->ofdm_pwr_a = 0x34;


 for (ii = 0; ii < CB_MAX_CHANNEL_5G; ii++) {
  priv->ofdm_a_pwr_tbl[ii] =
   priv->eeprom[ii + EEP_OFS_OFDMA_PWR_TBL];

  if (priv->ofdm_a_pwr_tbl[ii] == 0)
   priv->ofdm_a_pwr_tbl[ii] = priv->ofdm_pwr_a;
 }

 antenna = priv->eeprom[EEP_OFS_ANTENNA];

 if (antenna & EEP_ANTINV)
  priv->tx_rx_ant_inv = 1;
 else
  priv->tx_rx_ant_inv = 0;

 antenna &= (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN);

 if (antenna == 0)
  antenna = (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN);

 if (antenna == (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN)) {
  priv->tx_antenna_mode = ANT_B;
  priv->rx_antenna_sel = 1;

  if (priv->tx_rx_ant_inv)
   priv->rx_antenna_mode = ANT_A;
  else
   priv->rx_antenna_mode = ANT_B;
 } else {
  priv->rx_antenna_sel = 0;

  if (antenna & EEP_ANTENNA_AUX) {
   priv->tx_antenna_mode = ANT_A;

   if (priv->tx_rx_ant_inv)
    priv->rx_antenna_mode = ANT_B;
   else
    priv->rx_antenna_mode = ANT_A;
  } else {
   priv->tx_antenna_mode = ANT_B;

  if (priv->tx_rx_ant_inv)
   priv->rx_antenna_mode = ANT_A;
  else
   priv->rx_antenna_mode = ANT_B;
  }
 }


 ret = vnt_set_antenna_mode(priv, priv->rx_antenna_mode);
 if (ret)
  goto end;


 priv->auto_fb_ctrl = AUTO_FB_0;


 priv->bb_type = BB_TYPE_11G;


 priv->rf_type = init_rsp->rf_type;


 if (priv->rf_type == RF_VT3226D0) {
  if ((priv->eeprom[EEP_OFS_MAJOR_VER] == 0x1) &&
      (priv->eeprom[EEP_OFS_MINOR_VER] >= 0x4)) {
   calib_tx_iq = priv->eeprom[EEP_OFS_CALIB_TX_IQ];
   calib_tx_dc = priv->eeprom[EEP_OFS_CALIB_TX_DC];
   calib_rx_iq = priv->eeprom[EEP_OFS_CALIB_RX_IQ];
   if (calib_tx_iq || calib_tx_dc || calib_rx_iq) {



    ret = vnt_control_out_u8(priv,
        MESSAGE_REQUEST_BBREG,
        0xff, 0x03);
    if (ret)
     goto end;


    ret = vnt_control_out_u8(priv,
        MESSAGE_REQUEST_BBREG,
        0xfb, calib_tx_iq);
    if (ret)
     goto end;


    ret = vnt_control_out_u8(priv,
        MESSAGE_REQUEST_BBREG,
        0xfC, calib_tx_dc);
    if (ret)
     goto end;


    ret = vnt_control_out_u8(priv,
        MESSAGE_REQUEST_BBREG,
        0xfd, calib_rx_iq);
    if (ret)
     goto end;
   } else {



    ret = vnt_control_out_u8(priv,
        MESSAGE_REQUEST_BBREG,
        0xff, 0x0);
    if (ret)
     goto end;
   }
  }
 }


 memcpy(priv->permanent_net_addr, init_rsp->net_addr, 6);
 ether_addr_copy(priv->current_net_addr, priv->permanent_net_addr);


 dev_dbg(&priv->usb->dev, "Network address = %pM\n",
  priv->current_net_addr);





 if (priv->bb_type == BB_TYPE_11A)
  priv->short_slot_time = 1;
 else
  priv->short_slot_time = 0;

 ret = vnt_set_short_slot_time(priv);
 if (ret)
  goto end;

 priv->radio_ctl = priv->eeprom[EEP_OFS_RADIOCTL];

 if ((priv->radio_ctl & EEP_RADIOCTL_ENABLE) != 0) {
  ret = vnt_control_in(priv, MESSAGE_TYPE_READ,
         MAC_REG_GPIOCTL1, MESSAGE_REQUEST_MACREG,
         1, &tmp);
  if (ret)
   goto end;

  if ((tmp & GPIO3_DATA) == 0) {
   ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1,
        GPIO3_INTMD);
  } else {
   ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1,
         GPIO3_INTMD);
  }

  if (ret)
   goto end;
 }


 ret = vnt_mac_set_led(priv, LEDSTS_TMLEN, 0x38);
 if (ret)
  goto end;

 ret = vnt_mac_set_led(priv, LEDSTS_STS, LEDSTS_SLOW);
 if (ret)
  goto end;

 ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL0, 0x01);
 if (ret)
  goto end;

 ret = vnt_radio_power_on(priv);
 if (ret)
  goto end;

 dev_dbg(&priv->usb->dev, "<----INIbInitAdapter Exit\n");

end:
 return ret;
}
