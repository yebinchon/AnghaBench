
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fusb302_chip {int i2c_client; } ;


 int fusb302_log (struct fusb302_chip*,char*,scalar_t__,scalar_t__,int) ;
 int i2c_smbus_write_i2c_block_data (int ,scalar_t__,scalar_t__,scalar_t__ const*) ;

__attribute__((used)) static int fusb302_i2c_block_write(struct fusb302_chip *chip, u8 address,
       u8 length, const u8 *data)
{
 int ret = 0;

 if (length <= 0)
  return ret;

 ret = i2c_smbus_write_i2c_block_data(chip->i2c_client, address,
          length, data);
 if (ret < 0)
  fusb302_log(chip, "cannot block write 0x%02x, len=%d, ret=%d",
       address, length, ret);

 return ret;
}
