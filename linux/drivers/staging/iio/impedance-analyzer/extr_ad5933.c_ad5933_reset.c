
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5933_state {unsigned char ctrl_lb; int client; } ;


 unsigned char AD5933_CTRL_RESET ;
 int AD5933_REG_CONTROL_LB ;
 int ad5933_i2c_write (int ,int ,int,unsigned char*) ;

__attribute__((used)) static int ad5933_reset(struct ad5933_state *st)
{
 unsigned char dat = st->ctrl_lb | AD5933_CTRL_RESET;

 return ad5933_i2c_write(st->client,
   AD5933_REG_CONTROL_LB, 1, &dat);
}
