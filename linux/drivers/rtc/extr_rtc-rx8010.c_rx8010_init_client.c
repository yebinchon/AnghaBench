
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx8010_data {int ctrlreg; int client; } ;
struct i2c_client {int dev; } ;


 int EIO ;
 int RX8010_CTRL_TEST ;
 int RX8010_FLAG ;
 int RX8010_FLAG_AF ;
 int RX8010_FLAG_TF ;
 int RX8010_FLAG_UF ;
 int RX8010_FLAG_VLF ;
 int RX8010_IRQ ;
 int RX8010_RESV17 ;
 int RX8010_RESV30 ;
 int RX8010_RESV31 ;
 int dev_warn (int *,char*) ;
 struct rx8010_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int rx8010_init_client(struct i2c_client *client)
{
 struct rx8010_data *rx8010 = i2c_get_clientdata(client);
 u8 ctrl[2];
 int need_clear = 0, err = 0;


 err = i2c_smbus_write_byte_data(client, RX8010_RESV17, 0xD8);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte_data(client, RX8010_RESV30, 0x00);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte_data(client, RX8010_RESV31, 0x08);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte_data(client, RX8010_IRQ, 0x00);
 if (err < 0)
  return err;

 err = i2c_smbus_read_i2c_block_data(rx8010->client, RX8010_FLAG,
         2, ctrl);
 if (err != 2)
  return err < 0 ? err : -EIO;

 if (ctrl[0] & RX8010_FLAG_VLF)
  dev_warn(&client->dev, "Frequency stop was detected\n");

 if (ctrl[0] & RX8010_FLAG_AF) {
  dev_warn(&client->dev, "Alarm was detected\n");
  need_clear = 1;
 }

 if (ctrl[0] & RX8010_FLAG_TF)
  need_clear = 1;

 if (ctrl[0] & RX8010_FLAG_UF)
  need_clear = 1;

 if (need_clear) {
  ctrl[0] &= ~(RX8010_FLAG_AF | RX8010_FLAG_TF | RX8010_FLAG_UF);
  err = i2c_smbus_write_byte_data(client, RX8010_FLAG, ctrl[0]);
  if (err < 0)
   return err;
 }

 rx8010->ctrlreg = (ctrl[1] & ~RX8010_CTRL_TEST);

 return 0;
}
