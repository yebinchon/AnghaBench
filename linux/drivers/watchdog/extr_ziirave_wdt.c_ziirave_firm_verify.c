
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct watchdog_device {int parent; } ;
struct ihex_binrec {int data; int addr; int len; } ;
struct i2c_client {int dev; } ;
struct firmware {scalar_t__ data; } ;


 int EINVAL ;
 int ZIIRAVE_CMD_DOWNLOAD_READ_BYTE ;
 int ZIIRAVE_FIRM_PKT_DATA_SIZE ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dev_err (int *,char*,int const) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct ihex_binrec* ihex_next_binrec (struct ihex_binrec const*) ;
 scalar_t__ memcmp (int*,int ,int const) ;
 struct i2c_client* to_i2c_client (int ) ;
 scalar_t__ ziirave_firm_addr_readonly (int const) ;
 int ziirave_firm_set_read_addr (struct watchdog_device*,int const) ;

__attribute__((used)) static int ziirave_firm_verify(struct watchdog_device *wdd,
          const struct firmware *fw)
{
 struct i2c_client *client = to_i2c_client(wdd->parent);
 const struct ihex_binrec *rec;
 int i, ret;
 u8 data[ZIIRAVE_FIRM_PKT_DATA_SIZE];

 for (rec = (void *)fw->data; rec; rec = ihex_next_binrec(rec)) {
  const u16 len = be16_to_cpu(rec->len);
  const u32 addr = be32_to_cpu(rec->addr);

  if (ziirave_firm_addr_readonly(addr))
   continue;

  ret = ziirave_firm_set_read_addr(wdd, addr);
  if (ret) {
   dev_err(&client->dev,
    "Failed to send SET_READ_ADDR command: %d\n",
    ret);
   return ret;
  }

  for (i = 0; i < len; i++) {
   ret = i2c_smbus_read_byte_data(client,
      ZIIRAVE_CMD_DOWNLOAD_READ_BYTE);
   if (ret < 0) {
    dev_err(&client->dev,
     "Failed to READ DATA: %d\n", ret);
    return ret;
   }
   data[i] = ret;
  }

  if (memcmp(data, rec->data, len)) {
   dev_err(&client->dev,
    "Firmware mismatch at address 0x%04x\n", addr);
   return -EINVAL;
  }
 }

 return 0;
}
