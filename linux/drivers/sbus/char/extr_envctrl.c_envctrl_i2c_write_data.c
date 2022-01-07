
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCF8584_DATA ;
 int envtrl_i2c_test_pin () ;
 scalar_t__ i2c ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void envctrl_i2c_write_data(unsigned char port)
{
 envtrl_i2c_test_pin();
 writeb(port, i2c + PCF8584_DATA);
}
