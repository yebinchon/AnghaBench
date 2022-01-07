
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;


 int SBSM_RETRY_CNT ;
 int dev_err (int *,char*,int ) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int sbsm_write_word(struct i2c_client *client, u8 address, u16 word)
{
 int ret, retries;

 for (retries = SBSM_RETRY_CNT; retries > 0; retries--) {
  ret = i2c_smbus_write_word_data(client, address, word);
  if (ret >= 0)
   break;
 }
 if (ret < 0)
  dev_err(&client->dev, "failed to write to register 0x%02x\n",
   address);

 return ret;
}
