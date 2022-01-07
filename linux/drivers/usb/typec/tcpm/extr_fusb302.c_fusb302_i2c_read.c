
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fusb302_chip {int i2c_client; } ;


 int fusb302_log (struct fusb302_chip*,char*,scalar_t__,int) ;
 int i2c_smbus_read_byte_data (int ,scalar_t__) ;

__attribute__((used)) static int fusb302_i2c_read(struct fusb302_chip *chip,
       u8 address, u8 *data)
{
 int ret = 0;

 ret = i2c_smbus_read_byte_data(chip->i2c_client, address);
 *data = (u8)ret;
 if (ret < 0)
  fusb302_log(chip, "cannot read %02x, ret=%d", address, ret);

 return ret;
}
