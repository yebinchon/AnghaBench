
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int client; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int bq24190_write(struct bq24190_dev_info *bdi, u8 reg, u8 data)
{
 return i2c_smbus_write_byte_data(bdi->client, reg, data);
}
