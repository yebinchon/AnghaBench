
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct trf7970a {scalar_t__ iso_ctrl_tech; int framing; scalar_t__ chip_status_ctrl; scalar_t__ iso_ctrl; scalar_t__ modulator_sys_clk_ctrl; scalar_t__ guard_time; int dev; void* tx_cmd; } ;


 int EBUSY ;
 int EINVAL ;
 int TRF7970A_CHIP_STATUS_CTRL ;
 scalar_t__ TRF7970A_CHIP_STATUS_RF_ON ;
 void* TRF7970A_CMD_TRANSMIT ;
 void* TRF7970A_CMD_TRANSMIT_NO_CRC ;
 int TRF7970A_ISO_CTRL ;
 scalar_t__ TRF7970A_ISO_CTRL_RX_CRC_N ;
 int TRF7970A_MODULATOR_SYS_CLK_CTRL ;
 int dev_dbg (int ,char*,int) ;
 int trf7970a_is_rf_field (struct trf7970a*,int*) ;
 int trf7970a_write (struct trf7970a*,int ,scalar_t__) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int trf7970a_in_config_framing(struct trf7970a *trf, int framing)
{
 u8 iso_ctrl = trf->iso_ctrl_tech;
 bool is_rf_field = 0;
 int ret;

 dev_dbg(trf->dev, "framing: %d\n", framing);

 switch (framing) {
 case 137:
 case 136:
  trf->tx_cmd = TRF7970A_CMD_TRANSMIT_NO_CRC;
  iso_ctrl |= TRF7970A_ISO_CTRL_RX_CRC_N;
  break;
 case 135:
 case 133:
 case 132:
 case 131:
 case 130:
 case 128:
 case 140:
 case 139:
 case 138:
 case 129:
  trf->tx_cmd = TRF7970A_CMD_TRANSMIT;
  iso_ctrl &= ~TRF7970A_ISO_CTRL_RX_CRC_N;
  break;
 case 134:
  trf->tx_cmd = TRF7970A_CMD_TRANSMIT;
  iso_ctrl |= TRF7970A_ISO_CTRL_RX_CRC_N;
  break;
 default:
  dev_dbg(trf->dev, "Unsupported Framing: %d\n", framing);
  return -EINVAL;
 }

 trf->framing = framing;

 if (!(trf->chip_status_ctrl & TRF7970A_CHIP_STATUS_RF_ON)) {
  ret = trf7970a_is_rf_field(trf, &is_rf_field);
  if (ret)
   return ret;

  if (is_rf_field)
   return -EBUSY;
 }

 if (iso_ctrl != trf->iso_ctrl) {
  ret = trf7970a_write(trf, TRF7970A_ISO_CTRL, iso_ctrl);
  if (ret)
   return ret;

  trf->iso_ctrl = iso_ctrl;

  ret = trf7970a_write(trf, TRF7970A_MODULATOR_SYS_CLK_CTRL,
         trf->modulator_sys_clk_ctrl);
  if (ret)
   return ret;
 }

 if (!(trf->chip_status_ctrl & TRF7970A_CHIP_STATUS_RF_ON)) {
  ret = trf7970a_write(trf, TRF7970A_CHIP_STATUS_CTRL,
         trf->chip_status_ctrl |
         TRF7970A_CHIP_STATUS_RF_ON);
  if (ret)
   return ret;

  trf->chip_status_ctrl |= TRF7970A_CHIP_STATUS_RF_ON;

  usleep_range(trf->guard_time, trf->guard_time + 1000);
 }

 return 0;
}
