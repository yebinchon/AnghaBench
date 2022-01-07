
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb302_chip {int i2c_client; } ;


 int EIO ;
 int fusb302_log (struct fusb302_chip*,char*,int,int,int) ;
 int i2c_smbus_read_i2c_block_data (int ,int,int,int*) ;

__attribute__((used)) static int fusb302_i2c_block_read(struct fusb302_chip *chip, u8 address,
      u8 length, u8 *data)
{
 int ret = 0;

 if (length <= 0)
  return ret;

 ret = i2c_smbus_read_i2c_block_data(chip->i2c_client, address,
         length, data);
 if (ret < 0) {
  fusb302_log(chip, "cannot block read 0x%02x, len=%d, ret=%d",
       address, length, ret);
  goto done;
 }
 if (ret != length) {
  fusb302_log(chip, "only read %d/%d bytes from 0x%02x",
       ret, length, address);
  ret = -EIO;
 }

done:
 return ret;
}
