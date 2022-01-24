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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {int tx_block; struct device* dev; } ;
struct cmdq_client {int /*<<< orphan*/  chan; TYPE_1__ client; scalar_t__ pkt_cnt; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; scalar_t__ timeout_ms; } ;

/* Variables and functions */
 scalar_t__ CMDQ_NO_TIMEOUT ; 
 scalar_t__ ENOMEM ; 
 struct cmdq_client* FUNC0 (long) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdq_client_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_client*) ; 
 struct cmdq_client* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct cmdq_client *FUNC9(struct device *dev, int index, u32 timeout)
{
	struct cmdq_client *client;

	client = FUNC5(sizeof(*client), GFP_KERNEL);
	if (!client)
		return (struct cmdq_client *)-ENOMEM;

	client->timeout_ms = timeout;
	if (timeout != CMDQ_NO_TIMEOUT) {
		FUNC7(&client->lock);
		FUNC8(&client->timer, cmdq_client_timeout, 0);
	}
	client->pkt_cnt = 0;
	client->client.dev = dev;
	client->client.tx_block = false;
	client->chan = FUNC6(&client->client, index);

	if (FUNC1(client->chan)) {
		long err;

		FUNC3(dev, "failed to request channel\n");
		err = FUNC2(client->chan);
		FUNC4(client);

		return FUNC0(err);
	}

	return client;
}