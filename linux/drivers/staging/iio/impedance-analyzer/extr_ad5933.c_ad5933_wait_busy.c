
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5933_state {int client; } ;


 unsigned char AD5933_MAX_RETRIES ;
 int AD5933_REG_STATUS ;
 int EAGAIN ;
 int ad5933_i2c_read (int ,int ,int,unsigned char*) ;
 int cpu_relax () ;
 int mdelay (int) ;

__attribute__((used)) static int ad5933_wait_busy(struct ad5933_state *st, unsigned char event)
{
 unsigned char val, timeout = AD5933_MAX_RETRIES;
 int ret;

 while (timeout--) {
  ret = ad5933_i2c_read(st->client, AD5933_REG_STATUS, 1, &val);
  if (ret < 0)
   return ret;
  if (val & event)
   return val;
  cpu_relax();
  mdelay(1);
 }

 return -EAGAIN;
}
