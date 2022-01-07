
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 int MAX_LEN ;
 scalar_t__ i2c_master_send (struct i2c_client*,scalar_t__*,scalar_t__) ;
 int memcpy (scalar_t__*,void*,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int bq32k_write(struct device *dev, void *data, uint8_t off, uint8_t len)
{
 struct i2c_client *client = to_i2c_client(dev);
 uint8_t buffer[MAX_LEN + 1];

 buffer[0] = off;
 memcpy(&buffer[1], data, len);

 if (i2c_master_send(client, buffer, len + 1) == len + 1)
  return 0;

 return -EIO;
}
