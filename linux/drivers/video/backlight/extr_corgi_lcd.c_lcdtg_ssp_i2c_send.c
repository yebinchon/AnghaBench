
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct corgi_lcd {int dummy; } ;


 int POWERREG0_ADRS ;
 int corgi_ssp_lcdtg_send (struct corgi_lcd*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void lcdtg_ssp_i2c_send(struct corgi_lcd *lcd, uint8_t data)
{
 corgi_ssp_lcdtg_send(lcd, POWERREG0_ADRS, data);
 udelay(10);
}
