
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct comedi_device {int class_dev; } ;


 int CALDAC0_I2C_ADDR ;
 int CALDAC1_I2C_ADDR ;
 int dev_err (int ,char*) ;
 int i2c_write (struct comedi_device*,int,int*,int) ;

__attribute__((used)) static int caldac_i2c_write(struct comedi_device *dev,
       unsigned int caldac_channel, unsigned int value)
{
 u8 serial_bytes[3];
 u8 i2c_addr;
 enum pointer_bits {

  OFFSET_0_2 = 0x1,
  GAIN_0_2 = 0x2,
  OFFSET_1_3 = 0x4,
  GAIN_1_3 = 0x8,
 };
 enum data_bits {
  NOT_CLEAR_REGISTERS = 0x20,
 };

 switch (caldac_channel) {
 case 0:
  i2c_addr = CALDAC0_I2C_ADDR;
  serial_bytes[0] = OFFSET_0_2;
  break;
 case 1:
  i2c_addr = CALDAC0_I2C_ADDR;
  serial_bytes[0] = OFFSET_1_3;
  break;
 case 2:
  i2c_addr = CALDAC1_I2C_ADDR;
  serial_bytes[0] = OFFSET_0_2;
  break;
 case 3:
  i2c_addr = CALDAC1_I2C_ADDR;
  serial_bytes[0] = OFFSET_1_3;
  break;
 case 4:
  i2c_addr = CALDAC0_I2C_ADDR;
  serial_bytes[0] = GAIN_0_2;
  break;
 case 5:
  i2c_addr = CALDAC0_I2C_ADDR;
  serial_bytes[0] = GAIN_1_3;
  break;
 case 6:
  i2c_addr = CALDAC1_I2C_ADDR;
  serial_bytes[0] = GAIN_0_2;
  break;
 case 7:
  i2c_addr = CALDAC1_I2C_ADDR;
  serial_bytes[0] = GAIN_1_3;
  break;
 default:
  dev_err(dev->class_dev, "invalid caldac channel\n");
  return -1;
 }
 serial_bytes[1] = NOT_CLEAR_REGISTERS | ((value >> 8) & 0xf);
 serial_bytes[2] = value & 0xff;
 i2c_write(dev, i2c_addr, serial_bytes, 3);
 return 0;
}
