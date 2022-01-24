#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_8__ {int num_channels; int /*<<< orphan*/  poison_channel; int /*<<< orphan*/  enqueue; int /*<<< orphan*/  configure; TYPE_2__* channel_vector; int /*<<< orphan*/  description; int /*<<< orphan*/  interface; } ;
struct TYPE_7__ {int /*<<< orphan*/  dwork; int /*<<< orphan*/  list; } ;
struct hdm_i2c {TYPE_4__ most_iface; struct i2c_client* client; TYPE_3__ rx; TYPE_2__* capabilities; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {char* name_suffix; int /*<<< orphan*/  direction; int /*<<< orphan*/  buffer_size_packet; int /*<<< orphan*/  num_buffers_packet; int /*<<< orphan*/  data_type; } ;
struct TYPE_5__ {int nr; } ;

/* Variables and functions */
 size_t CH_RX ; 
 size_t CH_TX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ITYPE_I2C ; 
 int /*<<< orphan*/  MAX_BUFFERS_CONTROL ; 
 int /*<<< orphan*/  MAX_BUF_SIZE_CONTROL ; 
 int /*<<< orphan*/  MOST_CH_CONTROL ; 
 int /*<<< orphan*/  MOST_CH_RX ; 
 int /*<<< orphan*/  MOST_CH_TX ; 
 int NUM_CHANNELS ; 
 int /*<<< orphan*/  configure_channel ; 
 int /*<<< orphan*/  enqueue ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct hdm_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdm_i2c*) ; 
 struct hdm_i2c* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  pending_rx_work ; 
 int /*<<< orphan*/  poison_channel ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct hdm_i2c *dev;
	int ret, i;

	dev = FUNC4(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	/* ID format: i2c-<bus>-<address> */
	FUNC7(dev->name, sizeof(dev->name), "i2c-%d-%04x",
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

	FUNC1(&dev->rx.list);

	FUNC0(&dev->rx.dwork, pending_rx_work);

	dev->client = client;
	FUNC2(client, dev);

	ret = FUNC5(&dev->most_iface);
	if (ret) {
		FUNC6("Failed to register i2c as a MOST interface\n");
		FUNC3(dev);
		return ret;
	}

	return 0;
}