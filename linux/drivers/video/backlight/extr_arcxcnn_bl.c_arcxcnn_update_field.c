
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct arcxcnn {int client; int dev; } ;


 int dev_err (int ,char*,int) ;
 int i2c_smbus_read_byte_data (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;

__attribute__((used)) static int arcxcnn_update_field(struct arcxcnn *lp, u8 reg, u8 mask, u8 data)
{
 int ret;
 u8 tmp;

 ret = i2c_smbus_read_byte_data(lp->client, reg);
 if (ret < 0) {
  dev_err(lp->dev, "failed to read 0x%.2x\n", reg);
  return ret;
 }

 tmp = (u8)ret;
 tmp &= ~mask;
 tmp |= data & mask;

 return i2c_smbus_write_byte_data(lp->client, reg, tmp);
}
