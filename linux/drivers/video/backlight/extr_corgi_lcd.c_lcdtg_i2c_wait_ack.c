
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct corgi_lcd {int dummy; } ;


 int lcdtg_i2c_send_bit (struct corgi_lcd*,int ) ;

__attribute__((used)) static void lcdtg_i2c_wait_ack(struct corgi_lcd *lcd, uint8_t base)
{
 lcdtg_i2c_send_bit(lcd, base);
}
