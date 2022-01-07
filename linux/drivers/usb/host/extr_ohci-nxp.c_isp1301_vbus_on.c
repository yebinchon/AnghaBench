
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISP1301_I2C_OTG_CONTROL_1 ;
 int OTG1_VBUS_DRV ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int isp1301_i2c_client ;

__attribute__((used)) static inline void isp1301_vbus_on(void)
{
 i2c_smbus_write_byte_data(isp1301_i2c_client, ISP1301_I2C_OTG_CONTROL_1,
      OTG1_VBUS_DRV);
}
