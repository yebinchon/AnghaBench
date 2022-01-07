
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int client; } ;


 int i2c_smbus_read_byte_data (int ,int) ;

__attribute__((used)) static int bq24190_read(struct bq24190_dev_info *bdi, u8 reg, u8 *data)
{
 int ret;

 ret = i2c_smbus_read_byte_data(bdi->client, reg);
 if (ret < 0)
  return ret;

 *data = ret;
 return 0;
}
