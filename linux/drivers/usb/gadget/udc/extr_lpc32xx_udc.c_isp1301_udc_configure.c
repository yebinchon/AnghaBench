
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lpc32xx_udc {scalar_t__ atx; int isp1301_i2c_client; int dev; TYPE_1__* board; } ;
typedef int s32 ;
struct TYPE_2__ {scalar_t__ vbus_drv_pol; } ;


 int ISP1301_I2C_INTERRUPT_FALLING ;
 int ISP1301_I2C_INTERRUPT_LATCH ;
 int ISP1301_I2C_INTERRUPT_RISING ;
 int ISP1301_I2C_MODE_CONTROL_1 ;
 int ISP1301_I2C_MODE_CONTROL_2 ;
 int ISP1301_I2C_OTG_CONTROL_1 ;
 int ISP1301_I2C_REG_CLEAR_ADDR ;
 int MC1_DAT_SE0 ;
 int MC1_SPEED_REG ;
 int MC1_UART_EN ;
 int MC2_BI_DI ;
 int MC2_SPD_SUSP_CTRL ;
 int OTG1_DM_PULLDOWN ;
 int OTG1_DP_PULLDOWN ;
 int OTG1_VBUS_DISCHRG ;
 int OTG1_VBUS_DRV ;
 scalar_t__ STOTG04 ;
 int dev_info (int ,char*,int) ;
 int i2c_smbus_read_word_data (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void isp1301_udc_configure(struct lpc32xx_udc *udc)
{
 u8 value;
 s32 vendor, product;

 vendor = i2c_smbus_read_word_data(udc->isp1301_i2c_client, 0x00);
 product = i2c_smbus_read_word_data(udc->isp1301_i2c_client, 0x02);

 if (vendor == 0x0483 && product == 0xa0c4)
  udc->atx = STOTG04;





 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  (ISP1301_I2C_MODE_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR),
  MC1_UART_EN);


 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  (ISP1301_I2C_MODE_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR), ~0);
 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_MODE_CONTROL_1, (MC1_SPEED_REG | MC1_DAT_SE0));




 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  (ISP1301_I2C_MODE_CONTROL_2 | ISP1301_I2C_REG_CLEAR_ADDR), ~0);

 value = MC2_BI_DI;
 if (udc->atx != STOTG04)
  value |= MC2_SPD_SUSP_CTRL;
 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_MODE_CONTROL_2, value);


 if (udc->board->vbus_drv_pol != 0)
  i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
   ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DRV);
 else
  i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
   ISP1301_I2C_OTG_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR,
   OTG1_VBUS_DRV);




 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  (ISP1301_I2C_OTG_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR), ~0);
 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_OTG_CONTROL_1,
  (0 | OTG1_DM_PULLDOWN | OTG1_DP_PULLDOWN));


 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DISCHRG);
 msleep(1);
 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  (ISP1301_I2C_OTG_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR),
  OTG1_VBUS_DISCHRG);

 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_INTERRUPT_LATCH | ISP1301_I2C_REG_CLEAR_ADDR, ~0);

 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_INTERRUPT_FALLING | ISP1301_I2C_REG_CLEAR_ADDR, ~0);
 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_INTERRUPT_RISING | ISP1301_I2C_REG_CLEAR_ADDR, ~0);

 dev_info(udc->dev, "ISP1301 Vendor ID  : 0x%04x\n", vendor);
 dev_info(udc->dev, "ISP1301 Product ID : 0x%04x\n", product);
 dev_info(udc->dev, "ISP1301 Version ID : 0x%04x\n",
   i2c_smbus_read_word_data(udc->isp1301_i2c_client, 0x14));

}
