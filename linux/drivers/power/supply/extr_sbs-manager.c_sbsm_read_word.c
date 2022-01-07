
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int SBSM_RETRY_CNT ;
 int dev_err (int *,char*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static int sbsm_read_word(struct i2c_client *client, u8 address)
{
 int reg, retries;

 for (retries = SBSM_RETRY_CNT; retries > 0; retries--) {
  reg = i2c_smbus_read_word_data(client, address);
  if (reg >= 0)
   break;
 }

 if (reg < 0) {
  dev_err(&client->dev, "failed to read register 0x%02x\n",
   address);
 }

 return reg;
}
