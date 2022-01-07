
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufx_data {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int check_warn_return (int,char*) ;
 int msleep (int) ;
 int pr_warn (char*,...) ;
 int ufx_reg_read (struct ufx_data*,int,int*) ;
 int ufx_reg_write (struct ufx_data*,int,int) ;

__attribute__((used)) static int ufx_i2c_wait_busy(struct ufx_data *dev)
{
 u32 tmp;
 int i, status;

 for (i = 0; i < 15; i++) {
  status = ufx_reg_read(dev, 0x1100, &tmp);
  check_warn_return(status, "0x1100 read failed");


  if ((tmp & 0x80000000) == 0) {
   if (tmp & 0x20000000) {
    pr_warn("I2C read failed, 0x1100=0x%08x", tmp);
    return -EIO;
   }

   return 0;
  }


  if (i >= 10)
   msleep(10);
 }

 pr_warn("I2C access timed out, resetting I2C hardware");
 status = ufx_reg_write(dev, 0x1100, 0x40000000);
 check_warn_return(status, "0x1100 write failed");

 return -ETIMEDOUT;
}
