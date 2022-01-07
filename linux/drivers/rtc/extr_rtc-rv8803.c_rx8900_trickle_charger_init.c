
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rv8803_data {scalar_t__ type; struct i2c_client* client; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int RX8900_BACKUP_CTRL ;
 int RX8900_FLAG_SWOFF ;
 int RX8900_FLAG_VDETOFF ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ rx_8900 ;

__attribute__((used)) static int rx8900_trickle_charger_init(struct rv8803_data *rv8803)
{
 struct i2c_client *client = rv8803->client;
 struct device_node *node = client->dev.of_node;
 int err;
 u8 flags;

 if (!node)
  return 0;

 if (rv8803->type != rx_8900)
  return 0;

 err = i2c_smbus_read_byte_data(rv8803->client, RX8900_BACKUP_CTRL);
 if (err < 0)
  return err;

 flags = ~(RX8900_FLAG_VDETOFF | RX8900_FLAG_SWOFF) & (u8)err;

 if (of_property_read_bool(node, "epson,vdet-disable"))
  flags |= RX8900_FLAG_VDETOFF;

 if (of_property_read_bool(node, "trickle-diode-disable"))
  flags |= RX8900_FLAG_SWOFF;

 return i2c_smbus_write_byte_data(rv8803->client, RX8900_BACKUP_CTRL,
      flags);
}
