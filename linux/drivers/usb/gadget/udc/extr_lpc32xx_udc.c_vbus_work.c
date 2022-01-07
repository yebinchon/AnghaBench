
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lpc32xx_udc {scalar_t__ enabled; int vbus; int last_vbus; int gadget; int isp1301_i2c_client; } ;


 int INT_SESS_VLD ;
 int ISP1301_I2C_INTERRUPT_LATCH ;
 int ISP1301_I2C_INTERRUPT_SOURCE ;
 int ISP1301_I2C_OTG_CONTROL_1 ;
 int ISP1301_I2C_REG_CLEAR_ADDR ;
 int OTG1_VBUS_DISCHRG ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int,int ) ;
 int lpc32xx_vbus_session (int *,int) ;
 int msleep (int) ;

__attribute__((used)) static void vbus_work(struct lpc32xx_udc *udc)
{
 u8 value;

 if (udc->enabled != 0) {

  i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
   ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DISCHRG);


  msleep(100);


  i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
   ISP1301_I2C_OTG_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR,
   OTG1_VBUS_DISCHRG);


  i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
   ISP1301_I2C_INTERRUPT_LATCH |
   ISP1301_I2C_REG_CLEAR_ADDR, ~0);


  value = i2c_smbus_read_byte_data(udc->isp1301_i2c_client,
       ISP1301_I2C_INTERRUPT_SOURCE);


  if (value & INT_SESS_VLD)
   udc->vbus = 1;
  else
   udc->vbus = 0;


  if (udc->last_vbus != udc->vbus) {
   udc->last_vbus = udc->vbus;
   lpc32xx_vbus_session(&udc->gadget, udc->vbus);
  }
 }
}
