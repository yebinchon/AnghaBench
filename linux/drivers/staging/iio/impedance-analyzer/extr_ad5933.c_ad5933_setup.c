
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ad5933_state {int settling_cycles; int freq_points; int client; } ;
typedef scalar_t__ __be16 ;


 int AD5933_REG_FREQ_INC ;
 int AD5933_REG_FREQ_START ;
 int AD5933_REG_INC_NUM ;
 int AD5933_REG_SETTLING_CYCLES ;
 int ad5933_i2c_write (int ,int ,int,int *) ;
 int ad5933_reset (struct ad5933_state*) ;
 int ad5933_set_freq (struct ad5933_state*,int ,int) ;
 scalar_t__ cpu_to_be16 (int) ;

__attribute__((used)) static int ad5933_setup(struct ad5933_state *st)
{
 __be16 dat;
 int ret;

 ret = ad5933_reset(st);
 if (ret < 0)
  return ret;

 ret = ad5933_set_freq(st, AD5933_REG_FREQ_START, 10000);
 if (ret < 0)
  return ret;

 ret = ad5933_set_freq(st, AD5933_REG_FREQ_INC, 200);
 if (ret < 0)
  return ret;

 st->settling_cycles = 10;
 dat = cpu_to_be16(st->settling_cycles);

 ret = ad5933_i2c_write(st->client,
          AD5933_REG_SETTLING_CYCLES,
          2, (u8 *)&dat);
 if (ret < 0)
  return ret;

 st->freq_points = 100;
 dat = cpu_to_be16(st->freq_points);

 return ad5933_i2c_write(st->client, AD5933_REG_INC_NUM, 2, (u8 *)&dat);
}
