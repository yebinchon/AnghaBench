
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; } ;
struct i2c_board_info {unsigned short const addr; int member_0; } ;
struct i2c_adapter {int nr; } ;


 int I2C_BOARD_INFO (char*,unsigned short const) ;
 unsigned short const I2C_CLIENT_END ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 struct i2c_client* i2c_new_probed_device (struct i2c_adapter*,struct i2c_board_info*,unsigned short const*,int *) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int pr_debug (char*,int ,unsigned short const,...) ;

__attribute__((used)) static struct i2c_client *
chromes_laptop_instantiate_i2c_device(struct i2c_adapter *adapter,
          struct i2c_board_info *info,
          unsigned short alt_addr)
{
 const unsigned short addr_list[] = { info->addr, I2C_CLIENT_END };
 struct i2c_client *client;






 client = i2c_new_probed_device(adapter, info, addr_list, ((void*)0));
 if (!client && alt_addr) {
  struct i2c_board_info dummy_info = {
   I2C_BOARD_INFO("dummy", info->addr),
  };
  const unsigned short alt_addr_list[] = {
   alt_addr, I2C_CLIENT_END
  };
  struct i2c_client *dummy;

  dummy = i2c_new_probed_device(adapter, &dummy_info,
           alt_addr_list, ((void*)0));
  if (dummy) {
   pr_debug("%d-%02x is probed at %02x\n",
     adapter->nr, info->addr, dummy->addr);
   i2c_unregister_device(dummy);
   client = i2c_new_device(adapter, info);
  }
 }

 if (!client)
  pr_debug("failed to register device %d-%02x\n",
    adapter->nr, info->addr);
 else
  pr_debug("added i2c device %d-%02x\n",
    adapter->nr, info->addr);

 return client;
}
