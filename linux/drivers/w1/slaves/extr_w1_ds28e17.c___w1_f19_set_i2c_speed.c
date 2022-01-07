
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct w1_slave {int dev; int master; struct w1_f19_data* family_data; } ;
struct w1_f19_data {size_t speed; } ;


 int EIO ;
 size_t W1_F19_WRITE_CONFIGURATION ;
 int dev_info (int *,char*,int const) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (int ,size_t*,int) ;

__attribute__((used)) static int __w1_f19_set_i2c_speed(struct w1_slave *sl, u8 speed)
{
 struct w1_f19_data *data = sl->family_data;
 const int i2c_speeds[3] = { 100, 400, 900 };
 u8 w1_buf[2];


 if (w1_reset_select_slave(sl))
  return -EIO;

 w1_buf[0] = W1_F19_WRITE_CONFIGURATION;
 w1_buf[1] = speed;
 w1_write_block(sl->master, w1_buf, 2);


 data->speed = speed;

 dev_info(&sl->dev, "i2c speed set to %d kBaud\n", i2c_speeds[speed]);

 return 0;
}
