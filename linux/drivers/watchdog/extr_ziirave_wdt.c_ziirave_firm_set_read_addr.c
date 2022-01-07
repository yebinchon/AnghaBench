
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct watchdog_device {int parent; } ;
struct i2c_client {int dummy; } ;
typedef int address ;


 int ZIIRAVE_CMD_DOWNLOAD_SET_READ_ADDR ;
 int i2c_smbus_write_block_data (struct i2c_client*,int ,int,int *) ;
 int put_unaligned_le16 (int const,int *) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ziirave_firm_set_read_addr(struct watchdog_device *wdd, u32 addr)
{
 struct i2c_client *client = to_i2c_client(wdd->parent);
 const u16 addr16 = (u16)addr / 2;
 u8 address[2];

 put_unaligned_le16(addr16, address);

 return i2c_smbus_write_block_data(client,
       ZIIRAVE_CMD_DOWNLOAD_SET_READ_ADDR,
       sizeof(address), address);
}
