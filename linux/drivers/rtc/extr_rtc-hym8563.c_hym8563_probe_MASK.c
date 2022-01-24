#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct hym8563 {int valid; TYPE_1__* rtc; struct i2c_client* client; } ;
struct TYPE_4__ {int uie_unsupported; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HYM8563_SEC ; 
 int HYM8563_SEC_VL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct hym8563* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct hym8563*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hym8563*) ; 
 int FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  hym8563_irq ; 
 int /*<<< orphan*/  hym8563_rtc_ops ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct hym8563*) ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct hym8563 *hym8563;
	int ret;

	hym8563 = FUNC5(&client->dev, sizeof(*hym8563), GFP_KERNEL);
	if (!hym8563)
		return -ENOMEM;

	hym8563->client = client;
	FUNC10(client, hym8563);

	FUNC4(&client->dev, true);

	ret = FUNC9(client);
	if (ret) {
		FUNC3(&client->dev, "could not init device, %d\n", ret);
		return ret;
	}

	if (client->irq > 0) {
		ret = FUNC6(&client->dev, client->irq,
						NULL, hym8563_irq,
						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
						client->name, hym8563);
		if (ret < 0) {
			FUNC3(&client->dev, "irq %d request failed, %d\n",
				client->irq, ret);
			return ret;
		}
	}

	/* check state of calendar information */
	ret = FUNC11(client, HYM8563_SEC);
	if (ret < 0)
		return ret;

	hym8563->valid = !(ret & HYM8563_SEC_VL);
	FUNC2(&client->dev, "rtc information is %s\n",
		hym8563->valid ? "valid" : "invalid");

	hym8563->rtc = FUNC7(&client->dev, client->name,
						&hym8563_rtc_ops, THIS_MODULE);
	if (FUNC0(hym8563->rtc))
		return FUNC1(hym8563->rtc);

	/* the hym8563 alarm only supports a minute accuracy */
	hym8563->rtc->uie_unsupported = 1;

#ifdef CONFIG_COMMON_CLK
	hym8563_clkout_register_clk(hym8563);
#endif

	return 0;
}