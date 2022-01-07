
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SII164_DEVICE_ID_HIGH ;
 int SII164_DEVICE_ID_LOW ;
 int SII164_I2C_ADDRESS ;
 scalar_t__ i2cReadReg (int ,int ) ;

unsigned short sii164GetDeviceID(void)
{
 unsigned short deviceID;

 deviceID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_HIGH) << 8) |
      (unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_LOW);

 return deviceID;
}
