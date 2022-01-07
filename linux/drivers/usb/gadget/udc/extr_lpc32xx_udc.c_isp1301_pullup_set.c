
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int isp1301_i2c_client; scalar_t__ pullup; } ;


 int ISP1301_I2C_OTG_CONTROL_1 ;
 int ISP1301_I2C_REG_CLEAR_ADDR ;
 int OTG1_DP_PULLUP ;
 int i2c_smbus_write_byte_data (int ,int,int ) ;

__attribute__((used)) static void isp1301_pullup_set(struct lpc32xx_udc *udc)
{
 if (udc->pullup)

  i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
   ISP1301_I2C_OTG_CONTROL_1, OTG1_DP_PULLUP);
 else

  i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
   ISP1301_I2C_OTG_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR,
   OTG1_DP_PULLUP);
}
