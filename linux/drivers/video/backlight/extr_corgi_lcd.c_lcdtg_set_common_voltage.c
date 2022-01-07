
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct corgi_lcd {int dummy; } ;


 int lcdtg_i2c_send_byte (struct corgi_lcd*,int,int) ;
 int lcdtg_i2c_send_start (struct corgi_lcd*,int) ;
 int lcdtg_i2c_send_stop (struct corgi_lcd*,int) ;
 int lcdtg_i2c_wait_ack (struct corgi_lcd*,int) ;

__attribute__((used)) static void lcdtg_set_common_voltage(struct corgi_lcd *lcd,
         uint8_t base_data, uint8_t data)
{

 lcdtg_i2c_send_start(lcd, base_data);
 lcdtg_i2c_send_byte(lcd, base_data, 0x9c);
 lcdtg_i2c_wait_ack(lcd, base_data);
 lcdtg_i2c_send_byte(lcd, base_data, 0x00);
 lcdtg_i2c_wait_ack(lcd, base_data);
 lcdtg_i2c_send_byte(lcd, base_data, data);
 lcdtg_i2c_wait_ack(lcd, base_data);
 lcdtg_i2c_send_stop(lcd, base_data);
}
