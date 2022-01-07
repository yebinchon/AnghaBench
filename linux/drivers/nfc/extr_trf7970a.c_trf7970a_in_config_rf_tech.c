
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int modulator_sys_clk_ctrl; int technology; int iso_ctrl; int dev; void* guard_time; int iso_ctrl_tech; } ;


 int EINVAL ;





 void* TRF7970A_GUARD_TIME_15693 ;
 void* TRF7970A_GUARD_TIME_NFCA ;
 void* TRF7970A_GUARD_TIME_NFCB ;
 void* TRF7970A_GUARD_TIME_NFCF ;
 int TRF7970A_ISO_CTRL_14443A_106 ;
 int TRF7970A_ISO_CTRL_14443B_106 ;
 int TRF7970A_ISO_CTRL_15693_SGL_1OF4_2648 ;
 int TRF7970A_ISO_CTRL_FELICA_212 ;
 int TRF7970A_ISO_CTRL_FELICA_424 ;
 int TRF7970A_MODULATOR_DEPTH_ASK10 ;
 int TRF7970A_MODULATOR_DEPTH_OOK ;
 int TRF7970A_NFC_TARGET_LEVEL ;
 int dev_dbg (int ,char*,int) ;
 int trf7970a_write (struct trf7970a*,int ,int ) ;

__attribute__((used)) static int trf7970a_in_config_rf_tech(struct trf7970a *trf, int tech)
{
 int ret = 0;

 dev_dbg(trf->dev, "rf technology: %d\n", tech);

 switch (tech) {
 case 132:
  trf->iso_ctrl_tech = TRF7970A_ISO_CTRL_14443A_106;
  trf->modulator_sys_clk_ctrl =
      (trf->modulator_sys_clk_ctrl & 0xf8) |
      TRF7970A_MODULATOR_DEPTH_OOK;
  trf->guard_time = TRF7970A_GUARD_TIME_NFCA;
  break;
 case 131:
  trf->iso_ctrl_tech = TRF7970A_ISO_CTRL_14443B_106;
  trf->modulator_sys_clk_ctrl =
      (trf->modulator_sys_clk_ctrl & 0xf8) |
      TRF7970A_MODULATOR_DEPTH_ASK10;
  trf->guard_time = TRF7970A_GUARD_TIME_NFCB;
  break;
 case 130:
  trf->iso_ctrl_tech = TRF7970A_ISO_CTRL_FELICA_212;
  trf->modulator_sys_clk_ctrl =
      (trf->modulator_sys_clk_ctrl & 0xf8) |
      TRF7970A_MODULATOR_DEPTH_ASK10;
  trf->guard_time = TRF7970A_GUARD_TIME_NFCF;
  break;
 case 129:
  trf->iso_ctrl_tech = TRF7970A_ISO_CTRL_FELICA_424;
  trf->modulator_sys_clk_ctrl =
      (trf->modulator_sys_clk_ctrl & 0xf8) |
      TRF7970A_MODULATOR_DEPTH_ASK10;
  trf->guard_time = TRF7970A_GUARD_TIME_NFCF;
  break;
 case 128:
  trf->iso_ctrl_tech = TRF7970A_ISO_CTRL_15693_SGL_1OF4_2648;
  trf->modulator_sys_clk_ctrl =
      (trf->modulator_sys_clk_ctrl & 0xf8) |
      TRF7970A_MODULATOR_DEPTH_OOK;
  trf->guard_time = TRF7970A_GUARD_TIME_15693;
  break;
 default:
  dev_dbg(trf->dev, "Unsupported rf technology: %d\n", tech);
  return -EINVAL;
 }

 trf->technology = tech;






 if (trf->iso_ctrl == 0xff)
  ret = trf7970a_write(trf, TRF7970A_NFC_TARGET_LEVEL, 0);

 return ret;
}
