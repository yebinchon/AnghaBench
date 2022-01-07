
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufx_data {int dummy; } ;


 int check_warn_return (int,char*) ;
 int ufx_reg_clear_and_set_bits (struct ufx_data*,int,int,int) ;
 int ufx_reg_read (struct ufx_data*,int,int*) ;
 int ufx_reg_write (struct ufx_data*,int,int) ;

__attribute__((used)) static int ufx_i2c_init(struct ufx_data *dev)
{
 u32 tmp;


 int status = ufx_reg_write(dev, 0x106C, 0x00);
 check_warn_return(status, "failed to disable I2C");



 status = ufx_reg_write(dev, 0x1018, 12);
 check_warn_return(status, "error writing 0x1018");


 status = ufx_reg_write(dev, 0x1014, 6);
 check_warn_return(status, "error writing 0x1014");

 status = ufx_reg_read(dev, 0x1000, &tmp);
 check_warn_return(status, "error reading 0x1000");


 tmp &= ~(0x06);
 tmp |= 0x02;


 tmp &= ~(0x10);


 tmp |= 0x21;

 status = ufx_reg_write(dev, 0x1000, tmp);
 check_warn_return(status, "error writing 0x1000");


 status = ufx_reg_clear_and_set_bits(dev, 0x1004, 0xC00, 0x000);
 check_warn_return(status, "error setting TX mode bits in 0x1004");


 status = ufx_reg_write(dev, 0x106C, 0x01);
 check_warn_return(status, "failed to enable I2C");

 return 0;
}
