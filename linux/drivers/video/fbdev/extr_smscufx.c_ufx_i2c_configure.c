
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufx_data {int dummy; } ;


 int check_warn_return (int,char*) ;
 int ufx_reg_clear_and_set_bits (struct ufx_data*,int,int,int) ;
 int ufx_reg_write (struct ufx_data*,int,int) ;

__attribute__((used)) static int ufx_i2c_configure(struct ufx_data *dev)
{
 int status = ufx_reg_write(dev, 0x106C, 0x00);
 check_warn_return(status, "failed to disable I2C");

 status = ufx_reg_write(dev, 0x3010, 0x00000000);
 check_warn_return(status, "failed to write 0x3010");


 status = ufx_reg_clear_and_set_bits(dev, 0x1004, 0x3FF, (0xA0 >> 1));
 check_warn_return(status, "failed to set TAR bits in 0x1004");

 status = ufx_reg_write(dev, 0x106C, 0x01);
 check_warn_return(status, "failed to enable I2C");

 return 0;
}
