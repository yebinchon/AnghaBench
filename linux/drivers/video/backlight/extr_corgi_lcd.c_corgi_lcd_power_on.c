
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct corgi_lcd {int mode; } ;
struct TYPE_2__ {int comadj; } ;




 int DEFAULT_COMADJ ;
 int PICTRL_ADRS ;
 int PICTRL_COM_SIGNAL_OFF ;
 int PICTRL_DAC_SIGNAL_OFF ;
 int PICTRL_INIOFF ;
 int PICTRL_INIT_STATE ;
 int PICTRL_POWER_DOWN ;
 int POLCTRL_ADRS ;
 int POLCTRL_DATA_POL_RISE ;
 int POLCTRL_EN_ACT_H ;
 int POLCTRL_EN_POL_RISE ;
 int POLCTRL_SYNC_ACT_L ;
 int POLCTRL_SYNC_POL_RISE ;
 int POWER0_COM_DCLK ;
 int POWER0_COM_DOUT ;
 int POWER0_COM_OFF ;
 int POWER0_COM_ON ;
 int POWER0_DAC_OFF ;
 int POWER0_DAC_ON ;
 int POWER0_VCC5_OFF ;
 int POWER0_VCC5_ON ;
 int POWER1_GVSS_OFF ;
 int POWER1_GVSS_ON ;
 int POWER1_VDD_OFF ;
 int POWER1_VDD_ON ;
 int POWER1_VW_OFF ;
 int POWER1_VW_ON ;
 int POWERREG0_ADRS ;
 int POWERREG1_ADRS ;
 int RESCTL_ADRS ;
 int RESCTL_QVGA ;
 int RESCTL_VGA ;
 int corgi_ssp_lcdtg_send (struct corgi_lcd*,int ,int) ;
 int lcdtg_set_common_voltage (struct corgi_lcd*,int,int) ;
 int lcdtg_set_phadadj (struct corgi_lcd*,int) ;
 int mdelay (int) ;
 TYPE_1__ sharpsl_param ;
 int udelay (int) ;

__attribute__((used)) static void corgi_lcd_power_on(struct corgi_lcd *lcd)
{
 int comadj;


 corgi_ssp_lcdtg_send(lcd, PICTRL_ADRS,
   PICTRL_POWER_DOWN | PICTRL_INIOFF |
   PICTRL_INIT_STATE | PICTRL_COM_SIGNAL_OFF |
   PICTRL_DAC_SIGNAL_OFF);

 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS,
   POWER0_COM_DCLK | POWER0_COM_DOUT | POWER0_DAC_OFF |
   POWER0_COM_OFF | POWER0_VCC5_OFF);

 corgi_ssp_lcdtg_send(lcd, POWERREG1_ADRS,
   POWER1_VW_OFF | POWER1_GVSS_OFF | POWER1_VDD_OFF);


 corgi_ssp_lcdtg_send(lcd, POWERREG1_ADRS,
   POWER1_VW_OFF | POWER1_GVSS_OFF | POWER1_VDD_ON);
 mdelay(3);


 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS,
   POWER0_COM_DCLK | POWER0_COM_DOUT | POWER0_DAC_ON |
   POWER0_COM_OFF | POWER0_VCC5_OFF);



 corgi_ssp_lcdtg_send(lcd, PICTRL_ADRS,
   PICTRL_INIT_STATE | PICTRL_COM_SIGNAL_OFF);


 comadj = sharpsl_param.comadj;
 if (comadj < 0)
  comadj = DEFAULT_COMADJ;

 lcdtg_set_common_voltage(lcd, POWER0_DAC_ON | POWER0_COM_OFF |
     POWER0_VCC5_OFF, comadj);


 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS,
   POWER0_COM_DCLK | POWER0_COM_DOUT | POWER0_DAC_ON |
   POWER0_COM_OFF | POWER0_VCC5_ON);


 corgi_ssp_lcdtg_send(lcd, POWERREG1_ADRS,
   POWER1_VW_OFF | POWER1_GVSS_ON | POWER1_VDD_ON);
 mdelay(2);


 corgi_ssp_lcdtg_send(lcd, PICTRL_ADRS, PICTRL_INIT_STATE);


 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS,
   POWER0_COM_DCLK | POWER0_COM_DOUT | POWER0_DAC_ON |
   POWER0_COM_ON | POWER0_VCC5_ON);


 corgi_ssp_lcdtg_send(lcd, POWERREG1_ADRS,
   POWER1_VW_ON | POWER1_GVSS_ON | POWER1_VDD_ON);


 corgi_ssp_lcdtg_send(lcd, PICTRL_ADRS, 0);


 lcdtg_set_phadadj(lcd, lcd->mode);


 corgi_ssp_lcdtg_send(lcd, POLCTRL_ADRS,
   POLCTRL_SYNC_POL_RISE | POLCTRL_EN_POL_RISE |
   POLCTRL_DATA_POL_RISE | POLCTRL_SYNC_ACT_L |
   POLCTRL_EN_ACT_H);
 udelay(1000);

 switch (lcd->mode) {
 case 128:
  corgi_ssp_lcdtg_send(lcd, RESCTL_ADRS, RESCTL_VGA);
  break;
 case 129:
 default:
  corgi_ssp_lcdtg_send(lcd, RESCTL_ADRS, RESCTL_QVGA);
  break;
 }
}
