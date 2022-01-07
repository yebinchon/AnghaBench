
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int parent; } ;
struct ihex_binrec {int len; int * data; int addr; } ;
struct i2c_client {int dev; } ;
struct firmware {scalar_t__ data; } ;


 int ZIIRAVE_CMD_DOWNLOAD_END ;
 int ZIIRAVE_CMD_DOWNLOAD_START ;
 int ZIIRAVE_CMD_JUMP_TO_BOOTLOADER ;
 int ZIIRAVE_CMD_JUMP_TO_BOOTLOADER_MAGIC ;
 int ZIIRAVE_CMD_RESET_PROCESSOR ;
 int ZIIRAVE_CMD_RESET_PROCESSOR_MAGIC ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dev_err (int *,char*,...) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 struct ihex_binrec* ihex_next_binrec (struct ihex_binrec const*) ;
 int msleep (int) ;
 struct i2c_client* to_i2c_client (int ) ;
 int ziirave_firm_read_ack (struct watchdog_device*) ;
 int ziirave_firm_verify (struct watchdog_device*,struct firmware const*) ;
 int ziirave_firm_write_pkt (struct watchdog_device*,int ,int *,int ) ;

__attribute__((used)) static int ziirave_firm_upload(struct watchdog_device *wdd,
          const struct firmware *fw)
{
 struct i2c_client *client = to_i2c_client(wdd->parent);
 const struct ihex_binrec *rec;
 int ret;

 ret = i2c_smbus_write_byte_data(client,
     ZIIRAVE_CMD_JUMP_TO_BOOTLOADER,
     ZIIRAVE_CMD_JUMP_TO_BOOTLOADER_MAGIC);
 if (ret) {
  dev_err(&client->dev, "Failed to jump to bootloader\n");
  return ret;
 }

 msleep(500);

 ret = i2c_smbus_write_byte(client, ZIIRAVE_CMD_DOWNLOAD_START);
 if (ret) {
  dev_err(&client->dev, "Failed to start download\n");
  return ret;
 }

 ret = ziirave_firm_read_ack(wdd);
 if (ret) {
  dev_err(&client->dev, "No ACK for start download\n");
  return ret;
 }

 msleep(500);

 for (rec = (void *)fw->data; rec; rec = ihex_next_binrec(rec)) {
  ret = ziirave_firm_write_pkt(wdd, be32_to_cpu(rec->addr),
          rec->data, be16_to_cpu(rec->len));
  if (ret)
   return ret;
 }





 ret = ziirave_firm_write_pkt(wdd, 0, ((void*)0), 0);
 if (ret) {
  dev_err(&client->dev, "Failed to send EMPTY packet: %d\n", ret);
  return ret;
 }


 msleep(20);


 ret = ziirave_firm_verify(wdd, fw);
 if (ret) {
  dev_err(&client->dev,
   "Failed to verify firmware: %d\n", ret);
  return ret;
 }


 ret = i2c_smbus_write_byte(client, ZIIRAVE_CMD_DOWNLOAD_END);
 if (ret) {
  dev_err(&client->dev,
   "Failed to end firmware download: %d\n", ret);
  return ret;
 }


 ret = i2c_smbus_write_byte_data(client,
     ZIIRAVE_CMD_RESET_PROCESSOR,
     ZIIRAVE_CMD_RESET_PROCESSOR_MAGIC);
 if (ret) {
  dev_err(&client->dev,
   "Failed to reset the watchdog: %d\n", ret);
  return ret;
 }

 msleep(500);

 return 0;
}
