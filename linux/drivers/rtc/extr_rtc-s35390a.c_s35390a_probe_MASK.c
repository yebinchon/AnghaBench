#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct s35390a {int twentyfourhour; struct i2c_client* rtc; struct i2c_client** client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int uie_unsupported; scalar_t__ addr; int /*<<< orphan*/  adapter; struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  RTC_AF ; 
 int /*<<< orphan*/  S35390A_CMD_STATUS2 ; 
 char S35390A_FLAG_24H ; 
 char S35390A_FLAG_INT2 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 struct i2c_client* FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct s35390a* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct s35390a*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct s35390a*) ; 
 TYPE_2__ s35390a_driver ; 
 int FUNC11 (struct s35390a*,char*) ; 
 int /*<<< orphan*/  s35390a_rtc_ops ; 
 int FUNC12 (struct s35390a*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	int err, err_read;
	unsigned int i;
	struct s35390a *s35390a;
	char buf, status1;
	struct device *dev = &client->dev;

	if (!FUNC7(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	s35390a = FUNC5(dev, sizeof(struct s35390a), GFP_KERNEL);
	if (!s35390a)
		return -ENOMEM;

	s35390a->client[0] = client;
	FUNC8(client, s35390a);

	/* This chip uses multiple addresses, use dummy devices for them */
	for (i = 1; i < 8; ++i) {
		s35390a->client[i] = FUNC4(dev,
							       client->adapter,
							       client->addr + i);
		if (FUNC0(s35390a->client[i])) {
			FUNC2(dev, "Address %02x unavailable\n",
				client->addr + i);
			return FUNC1(s35390a->client[i]);
		}
	}

	err_read = FUNC11(s35390a, &status1);
	if (err_read < 0) {
		FUNC2(dev, "error resetting chip\n");
		return err_read;
	}

	if (status1 & S35390A_FLAG_24H)
		s35390a->twentyfourhour = 1;
	else
		s35390a->twentyfourhour = 0;

	if (status1 & S35390A_FLAG_INT2) {
		/* disable alarm (and maybe test mode) */
		buf = 0;
		err = FUNC12(s35390a, S35390A_CMD_STATUS2, &buf, 1);
		if (err < 0) {
			FUNC2(dev, "error disabling alarm");
			return err;
		}
	} else {
		err = FUNC10(s35390a);
		if (err < 0) {
			FUNC2(dev, "error disabling test mode\n");
			return err;
		}
	}

	FUNC3(dev, 1);

	s35390a->rtc = FUNC6(dev, s35390a_driver.driver.name,
						&s35390a_rtc_ops, THIS_MODULE);

	if (FUNC0(s35390a->rtc))
		return FUNC1(s35390a->rtc);

	/* supports per-minute alarms only, therefore set uie_unsupported */
	s35390a->rtc->uie_unsupported = 1;

	if (status1 & S35390A_FLAG_INT2)
		FUNC9(s35390a->rtc, 1, RTC_AF);

	return 0;
}