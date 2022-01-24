#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rv8803_data {scalar_t__ type; struct i2c_client* client; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX8900_BACKUP_CTRL ; 
 int RX8900_FLAG_SWOFF ; 
 int RX8900_FLAG_VDETOFF ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 
 scalar_t__ rx_8900 ; 

__attribute__((used)) static int FUNC3(struct rv8803_data *rv8803)
{
	struct i2c_client *client = rv8803->client;
	struct device_node *node = client->dev.of_node;
	int err;
	u8 flags;

	if (!node)
		return 0;

	if (rv8803->type != rx_8900)
		return 0;

	err = FUNC0(rv8803->client, RX8900_BACKUP_CTRL);
	if (err < 0)
		return err;

	flags = ~(RX8900_FLAG_VDETOFF | RX8900_FLAG_SWOFF) & (u8)err;

	if (FUNC2(node, "epson,vdet-disable"))
		flags |= RX8900_FLAG_VDETOFF;

	if (FUNC2(node, "trickle-diode-disable"))
		flags |= RX8900_FLAG_SWOFF;

	return FUNC1(rv8803->client, RX8900_BACKUP_CTRL,
					 flags);
}