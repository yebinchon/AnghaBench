
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgi_lcd {int dummy; } ;


 int PICTRL_ADRS ;
 int PICTRL_COM_SIGNAL_OFF ;
 int PICTRL_DAC_SIGNAL_OFF ;
 int PICTRL_INIOFF ;
 int PICTRL_POWER_DOWN ;
 int POWER0_COM_OFF ;
 int POWER0_DAC_OFF ;
 int POWER0_DAC_ON ;
 int POWER0_VCC5_OFF ;
 int POWER0_VCC5_ON ;
 int POWER1_GVSS_OFF ;
 int POWER1_GVSS_ON ;
 int POWER1_VDD_OFF ;
 int POWER1_VDD_ON ;
 int POWER1_VW_OFF ;
 int POWERREG0_ADRS ;
 int POWERREG1_ADRS ;
 int corgi_ssp_lcdtg_send (struct corgi_lcd*,int ,int) ;
 int lcdtg_set_common_voltage (struct corgi_lcd*,int,int ) ;
 int msleep (int) ;

__attribute__((used)) static void corgi_lcd_power_off(struct corgi_lcd *lcd)
{

 msleep(34);


 corgi_ssp_lcdtg_send(lcd, POWERREG1_ADRS,
   POWER1_VW_OFF | POWER1_GVSS_ON | POWER1_VDD_ON);


 corgi_ssp_lcdtg_send(lcd, PICTRL_ADRS, PICTRL_COM_SIGNAL_OFF);
 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS,
   POWER0_DAC_ON | POWER0_COM_OFF | POWER0_VCC5_ON);


 lcdtg_set_common_voltage(lcd, POWER0_DAC_ON | POWER0_COM_OFF |
   POWER0_VCC5_ON, 0);


 corgi_ssp_lcdtg_send(lcd, POWERREG1_ADRS,
   POWER1_VW_OFF | POWER1_GVSS_OFF | POWER1_VDD_ON);


 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS,
   POWER0_DAC_ON | POWER0_COM_OFF | POWER0_VCC5_OFF);


 corgi_ssp_lcdtg_send(lcd, PICTRL_ADRS,
   PICTRL_INIOFF | PICTRL_DAC_SIGNAL_OFF |
   PICTRL_POWER_DOWN | PICTRL_COM_SIGNAL_OFF);


 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS,
   POWER0_DAC_OFF | POWER0_COM_OFF | POWER0_VCC5_OFF);


 corgi_ssp_lcdtg_send(lcd, POWERREG1_ADRS,
   POWER1_VW_OFF | POWER1_GVSS_OFF | POWER1_VDD_OFF);
}
