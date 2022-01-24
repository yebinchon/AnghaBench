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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct fm3130 {size_t reg_addr_time; size_t reg_addr_alarm; int* regs; int alarm_valid; int data_valid; int /*<<< orphan*/  rtc; TYPE_1__* msg; struct i2c_client* client; } ;
struct TYPE_2__ {int len; size_t* buf; void* flags; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FM3130_ALARM_REGS ; 
 size_t FM3130_ALARM_SECONDS ; 
 size_t FM3130_ALARM_WP_CONTROL ; 
 size_t FM3130_CAL_CONTROL ; 
 int FM3130_CAL_CONTROL_BIT_nOSCEN ; 
 int FM3130_CLOCK_REGS ; 
 size_t FM3130_RTC_CONTROL ; 
 int FM3130_RTC_CONTROL_BIT_CAL ; 
 int FM3130_RTC_CONTROL_BIT_LB ; 
 int FM3130_RTC_CONTROL_BIT_POR ; 
 int FM3130_RTC_CONTROL_BIT_READ ; 
 int FM3130_RTC_CONTROL_BIT_WRITE ; 
 size_t FM3130_RTC_DATE ; 
 size_t FM3130_RTC_DAY ; 
 size_t FM3130_RTC_HOURS ; 
 size_t FM3130_RTC_MINUTES ; 
 size_t FM3130_RTC_MONTHS ; 
 size_t FM3130_RTC_SECONDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 void* I2C_M_RD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct fm3130* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fm3130_rtc_ops ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct fm3130*) ; 
 void* FUNC10 (struct i2c_client*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,size_t,int) ; 
 int FUNC12 (struct i2c_adapter*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct fm3130		*fm3130;
	int			err = -ENODEV;
	int			tmp;
	struct i2c_adapter	*adapter = client->adapter;

	if (!FUNC8(adapter,
			I2C_FUNC_I2C | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
		return -EIO;

	fm3130 = FUNC6(&client->dev, sizeof(struct fm3130), GFP_KERNEL);

	if (!fm3130)
		return -ENOMEM;

	fm3130->client = client;
	FUNC9(client, fm3130);
	fm3130->reg_addr_time = FM3130_RTC_SECONDS;
	fm3130->reg_addr_alarm = FM3130_ALARM_SECONDS;

	/* Messages to read time */
	fm3130->msg[0].addr = client->addr;
	fm3130->msg[0].flags = 0;
	fm3130->msg[0].len = 1;
	fm3130->msg[0].buf = &fm3130->reg_addr_time;

	fm3130->msg[1].addr = client->addr;
	fm3130->msg[1].flags = I2C_M_RD;
	fm3130->msg[1].len = FM3130_CLOCK_REGS;
	fm3130->msg[1].buf = &fm3130->regs[FM3130_RTC_SECONDS];

	/* Messages to read alarm */
	fm3130->msg[2].addr = client->addr;
	fm3130->msg[2].flags = 0;
	fm3130->msg[2].len = 1;
	fm3130->msg[2].buf = &fm3130->reg_addr_alarm;

	fm3130->msg[3].addr = client->addr;
	fm3130->msg[3].flags = I2C_M_RD;
	fm3130->msg[3].len = FM3130_ALARM_REGS;
	fm3130->msg[3].buf = &fm3130->regs[FM3130_ALARM_SECONDS];

	fm3130->alarm_valid = 0;
	fm3130->data_valid = 0;

	tmp = FUNC12(adapter, fm3130->msg, 4);
	if (tmp != 4) {
		FUNC3(&client->dev, "read error %d\n", tmp);
		err = -EIO;
		goto exit_free;
	}

	fm3130->regs[FM3130_RTC_CONTROL] =
		FUNC10(client, FM3130_RTC_CONTROL);
	fm3130->regs[FM3130_CAL_CONTROL] =
		FUNC10(client, FM3130_CAL_CONTROL);

	/* Disabling calibration mode */
	if (fm3130->regs[FM3130_RTC_CONTROL] & FM3130_RTC_CONTROL_BIT_CAL) {
		FUNC11(client, FM3130_RTC_CONTROL,
			fm3130->regs[FM3130_RTC_CONTROL] &
				~(FM3130_RTC_CONTROL_BIT_CAL));
		FUNC5(&client->dev, "Disabling calibration mode!\n");
	}

	/* Disabling read and write modes */
	if (fm3130->regs[FM3130_RTC_CONTROL] & FM3130_RTC_CONTROL_BIT_WRITE ||
	    fm3130->regs[FM3130_RTC_CONTROL] & FM3130_RTC_CONTROL_BIT_READ) {
		FUNC11(client, FM3130_RTC_CONTROL,
			fm3130->regs[FM3130_RTC_CONTROL] &
				~(FM3130_RTC_CONTROL_BIT_READ |
					FM3130_RTC_CONTROL_BIT_WRITE));
		FUNC5(&client->dev, "Disabling READ or WRITE mode!\n");
	}

	/* oscillator off?  turn it on, so clock can tick. */
	if (fm3130->regs[FM3130_CAL_CONTROL] & FM3130_CAL_CONTROL_BIT_nOSCEN)
		FUNC11(client, FM3130_CAL_CONTROL,
			fm3130->regs[FM3130_CAL_CONTROL] &
				~(FM3130_CAL_CONTROL_BIT_nOSCEN));

	/* low battery?  clear flag, and warn */
	if (fm3130->regs[FM3130_RTC_CONTROL] & FM3130_RTC_CONTROL_BIT_LB) {
		FUNC11(client, FM3130_RTC_CONTROL,
			fm3130->regs[FM3130_RTC_CONTROL] &
				~(FM3130_RTC_CONTROL_BIT_LB));
		FUNC5(&client->dev, "Low battery!\n");
	}

	/* check if Power On Reset bit is set */
	if (fm3130->regs[FM3130_RTC_CONTROL] & FM3130_RTC_CONTROL_BIT_POR) {
		FUNC11(client, FM3130_RTC_CONTROL,
			fm3130->regs[FM3130_RTC_CONTROL] &
				~FM3130_RTC_CONTROL_BIT_POR);
		FUNC3(&client->dev, "POR bit is set\n");
	}
	/* ACS is controlled by alarm */
	FUNC11(client, FM3130_ALARM_WP_CONTROL, 0x80);

	/* alarm registers sanity check */
	tmp = FUNC2(fm3130->regs[FM3130_RTC_SECONDS] & 0x7f);
	if (tmp > 59)
		goto bad_alarm;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_MINUTES] & 0x7f);
	if (tmp > 59)
		goto bad_alarm;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_HOURS] & 0x3f);
	if (tmp > 23)
		goto bad_alarm;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_DATE] & 0x3f);
	if (tmp == 0 || tmp > 31)
		goto bad_alarm;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_MONTHS] & 0x1f);
	if (tmp == 0 || tmp > 12)
		goto bad_alarm;

	fm3130->alarm_valid = 1;

bad_alarm:

	/* clock registers sanity chek */
	tmp = FUNC2(fm3130->regs[FM3130_RTC_SECONDS] & 0x7f);
	if (tmp > 59)
		goto bad_clock;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_MINUTES] & 0x7f);
	if (tmp > 59)
		goto bad_clock;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_HOURS] & 0x3f);
	if (tmp > 23)
		goto bad_clock;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_DAY] & 0x7);
	if (tmp == 0 || tmp > 7)
		goto bad_clock;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_DATE] & 0x3f);
	if (tmp == 0 || tmp > 31)
		goto bad_clock;

	tmp = FUNC2(fm3130->regs[FM3130_RTC_MONTHS] & 0x1f);
	if (tmp == 0 || tmp > 12)
		goto bad_clock;

	fm3130->data_valid = 1;

bad_clock:

	if (!fm3130->data_valid || !fm3130->alarm_valid)
		FUNC3(&client->dev, "%s: %15ph\n", "bogus registers",
			fm3130->regs);

	/* We won't bail out here because we just got invalid data.
	   Time setting from u-boot doesn't work anyway */
	fm3130->rtc = FUNC7(&client->dev, client->name,
				&fm3130_rtc_ops, THIS_MODULE);
	if (FUNC0(fm3130->rtc)) {
		err = FUNC1(fm3130->rtc);
		FUNC4(&client->dev,
			"unable to register the class device\n");
		goto exit_free;
	}
	return 0;
exit_free:
	return err;
}