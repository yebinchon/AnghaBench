
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5933_state {unsigned char ctrl_hb; int client; } ;


 int AD5933_REG_CONTROL_HB ;
 int ad5933_i2c_write (int ,int ,int,unsigned char*) ;

__attribute__((used)) static int ad5933_cmd(struct ad5933_state *st, unsigned char cmd)
{
 unsigned char dat = st->ctrl_hb | cmd;

 return ad5933_i2c_write(st->client,
   AD5933_REG_CONTROL_HB, 1, &dat);
}
