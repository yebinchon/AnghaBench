
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCF8584_DATA ;
 int envctrl_i2c_read_addr (unsigned char) ;
 int envctrl_i2c_read_data () ;
 int envctrl_i2c_stop () ;
 int envctrl_i2c_write_addr (unsigned char) ;
 int envctrl_i2c_write_data (unsigned char) ;
 scalar_t__ i2c ;
 unsigned char readb (scalar_t__) ;

__attribute__((used)) static unsigned char envctrl_i2c_read_8591(unsigned char addr, unsigned char port)
{

 envctrl_i2c_write_addr(addr);


 envctrl_i2c_write_data(port);
 envctrl_i2c_stop();


 envctrl_i2c_read_addr(addr);


 envctrl_i2c_read_data();
 envctrl_i2c_stop();

 return readb(i2c + PCF8584_DATA);
}
