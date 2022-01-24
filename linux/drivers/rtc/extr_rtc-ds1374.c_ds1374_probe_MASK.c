#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct ds1374 {int /*<<< orphan*/  rtc; int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct ds1374* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  ds1374_irq ; 
 int /*<<< orphan*/  ds1374_miscdev ; 
 int /*<<< orphan*/  ds1374_rtc_ops ; 
 int /*<<< orphan*/  ds1374_wdt_notifier ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  ds1374_work ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct ds1374*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 struct i2c_client* save_client ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ds1374 *ds1374;
	int ret;

	ds1374 = FUNC5(&client->dev, sizeof(struct ds1374), GFP_KERNEL);
	if (!ds1374)
		return -ENOMEM;

	ds1374->client = client;
	FUNC10(client, ds1374);

	FUNC0(&ds1374->work, ds1374_work);
	FUNC13(&ds1374->mutex);

	ret = FUNC8(client);
	if (ret)
		return ret;

	if (client->irq > 0) {
		ret = FUNC6(&client->dev, client->irq, ds1374_irq, 0,
					"ds1374", client);
		if (ret) {
			FUNC3(&client->dev, "unable to request IRQ\n");
			return ret;
		}

		FUNC4(&client->dev, 1);
	}

	ds1374->rtc = FUNC7(&client->dev, client->name,
						&ds1374_rtc_ops, THIS_MODULE);
	if (FUNC1(ds1374->rtc)) {
		FUNC3(&client->dev, "unable to register the class device\n");
		return FUNC2(ds1374->rtc);
	}

#ifdef CONFIG_RTC_DRV_DS1374_WDT
	save_client = client;
	ret = misc_register(&ds1374_miscdev);
	if (ret)
		return ret;
	ret = register_reboot_notifier(&ds1374_wdt_notifier);
	if (ret) {
		misc_deregister(&ds1374_miscdev);
		return ret;
	}
	ds1374_wdt_settimeout(131072);
#endif

	return 0;
}