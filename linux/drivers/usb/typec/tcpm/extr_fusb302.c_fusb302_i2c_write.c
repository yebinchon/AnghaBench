
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb302_chip {int i2c_client; } ;


 int fusb302_log (struct fusb302_chip*,char*,int ,int ,int) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int fusb302_i2c_write(struct fusb302_chip *chip,
        u8 address, u8 data)
{
 int ret = 0;

 ret = i2c_smbus_write_byte_data(chip->i2c_client, address, data);
 if (ret < 0)
  fusb302_log(chip, "cannot write 0x%02x to 0x%02x, ret=%d",
       data, address, ret);

 return ret;
}
