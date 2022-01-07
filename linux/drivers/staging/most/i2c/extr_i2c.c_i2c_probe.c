
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_8__ {int num_channels; int poison_channel; int enqueue; int configure; TYPE_2__* channel_vector; int description; int interface; } ;
struct TYPE_7__ {int dwork; int list; } ;
struct hdm_i2c {TYPE_4__ most_iface; struct i2c_client* client; TYPE_3__ rx; TYPE_2__* capabilities; int name; } ;
struct TYPE_6__ {char* name_suffix; int direction; int buffer_size_packet; int num_buffers_packet; int data_type; } ;
struct TYPE_5__ {int nr; } ;


 size_t CH_RX ;
 size_t CH_TX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int ITYPE_I2C ;
 int MAX_BUFFERS_CONTROL ;
 int MAX_BUF_SIZE_CONTROL ;
 int MOST_CH_CONTROL ;
 int MOST_CH_RX ;
 int MOST_CH_TX ;
 int NUM_CHANNELS ;
 int configure_channel ;
 int enqueue ;
 int i2c_set_clientdata (struct i2c_client*,struct hdm_i2c*) ;
 int kfree (struct hdm_i2c*) ;
 struct hdm_i2c* kzalloc (int,int ) ;
 int most_register_interface (TYPE_4__*) ;
 int pending_rx_work ;
 int poison_channel ;
 int pr_err (char*) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static int i2c_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct hdm_i2c *dev;
 int ret, i;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;


 snprintf(dev->name, sizeof(dev->name), "i2c-%d-%04x",
   client->adapter->nr, client->addr);

 for (i = 0; i < NUM_CHANNELS; i++) {
  dev->capabilities[i].data_type = MOST_CH_CONTROL;
  dev->capabilities[i].num_buffers_packet = MAX_BUFFERS_CONTROL;
  dev->capabilities[i].buffer_size_packet = MAX_BUF_SIZE_CONTROL;
 }
 dev->capabilities[CH_RX].direction = MOST_CH_RX;
 dev->capabilities[CH_RX].name_suffix = "rx";
 dev->capabilities[CH_TX].direction = MOST_CH_TX;
 dev->capabilities[CH_TX].name_suffix = "tx";

 dev->most_iface.interface = ITYPE_I2C;
 dev->most_iface.description = dev->name;
 dev->most_iface.num_channels = NUM_CHANNELS;
 dev->most_iface.channel_vector = dev->capabilities;
 dev->most_iface.configure = configure_channel;
 dev->most_iface.enqueue = enqueue;
 dev->most_iface.poison_channel = poison_channel;

 INIT_LIST_HEAD(&dev->rx.list);

 INIT_DELAYED_WORK(&dev->rx.dwork, pending_rx_work);

 dev->client = client;
 i2c_set_clientdata(client, dev);

 ret = most_register_interface(&dev->most_iface);
 if (ret) {
  pr_err("Failed to register i2c as a MOST interface\n");
  kfree(dev);
  return ret;
 }

 return 0;
}
