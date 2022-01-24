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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bbc_i2c_client {int /*<<< orphan*/  address; int /*<<< orphan*/  bus; struct platform_device* op; struct bbc_i2c_bus* bp; } ;
struct bbc_i2c_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct bbc_i2c_bus*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bbc_i2c_client*) ; 
 struct bbc_i2c_client* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

struct bbc_i2c_client *FUNC4(struct bbc_i2c_bus *bp, struct platform_device *op)
{
	struct bbc_i2c_client *client;
	const u32 *reg;

	client = FUNC2(sizeof(*client), GFP_KERNEL);
	if (!client)
		return NULL;
	client->bp = bp;
	client->op = op;

	reg = FUNC3(op->dev.of_node, "reg", NULL);
	if (!reg) {
		FUNC1(client);
		return NULL;
	}

	client->bus = reg[0];
	client->address = reg[1];

	FUNC0(bp, op);

	return client;
}