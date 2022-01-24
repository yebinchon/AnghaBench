#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int dummy; } ;
struct m41t80_data {unsigned long features; TYPE_1__* rtc; struct i2c_client* client; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_16__ {scalar_t__ of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_2__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {TYPE_2__ dev; } ;
struct TYPE_17__ {int /*<<< orphan*/  alarm_irq_enable; int /*<<< orphan*/  set_alarm; int /*<<< orphan*/  read_alarm; } ;
struct TYPE_15__ {int uie_unsupported; TYPE_4__* ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int M41T80_ALHOUR_HT ; 
 int M41T80_FEATURE_HT ; 
 int M41T80_FEATURE_SQ ; 
 int /*<<< orphan*/  M41T80_REG_ALARM_HOUR ; 
 int /*<<< orphan*/  M41T80_REG_SEC ; 
 int M41T80_SEC_ST ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 struct m41t80_data* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct i2c_client*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct m41t80_data*) ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  m41t80_alarm_irq_enable ; 
 int /*<<< orphan*/  m41t80_handle_irq ; 
 int /*<<< orphan*/  m41t80_read_alarm ; 
 TYPE_4__ m41t80_rtc_ops ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct rtc_time*) ; 
 int /*<<< orphan*/  m41t80_set_alarm ; 
 int /*<<< orphan*/  FUNC14 (struct m41t80_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 int FUNC18 (scalar_t__,char*) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_1__*) ; 
 struct i2c_client* save_client ; 
 int /*<<< orphan*/  wdt_dev ; 
 int /*<<< orphan*/  wdt_notifier ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	int rc = 0;
	struct rtc_time tm;
	struct m41t80_data *m41t80_data = NULL;
	bool wakeup_source = false;

	if (!FUNC9(client->adapter, I2C_FUNC_SMBUS_I2C_BLOCK |
				     I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC2(&adapter->dev, "doesn't support I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_I2C_BLOCK\n");
		return -ENODEV;
	}

	m41t80_data = FUNC6(&client->dev, sizeof(*m41t80_data),
				   GFP_KERNEL);
	if (!m41t80_data)
		return -ENOMEM;

	m41t80_data->client = client;
	if (client->dev.of_node)
		m41t80_data->features = (unsigned long)
			FUNC17(&client->dev);
	else
		m41t80_data->features = id->driver_data;
	FUNC10(client, m41t80_data);

	m41t80_data->rtc =  FUNC8(&client->dev);
	if (FUNC0(m41t80_data->rtc))
		return FUNC1(m41t80_data->rtc);

#ifdef CONFIG_OF
	wakeup_source = of_property_read_bool(client->dev.of_node,
					      "wakeup-source");
#endif
	if (client->irq > 0) {
		rc = FUNC7(&client->dev, client->irq,
					       NULL, m41t80_handle_irq,
					       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					       "m41t80", client);
		if (rc) {
			FUNC4(&client->dev, "unable to request IRQ, alarms disabled\n");
			client->irq = 0;
			wakeup_source = false;
		}
	}
	if (client->irq > 0 || wakeup_source) {
		m41t80_rtc_ops.read_alarm = m41t80_read_alarm;
		m41t80_rtc_ops.set_alarm = m41t80_set_alarm;
		m41t80_rtc_ops.alarm_irq_enable = m41t80_alarm_irq_enable;
		/* Enable the wakealarm */
		FUNC5(&client->dev, true);
	}

	m41t80_data->rtc->ops = &m41t80_rtc_ops;

	if (client->irq <= 0) {
		/* We cannot support UIE mode if we do not have an IRQ line */
		m41t80_data->rtc->uie_unsupported = 1;
	}

	/* Make sure HT (Halt Update) bit is cleared */
	rc = FUNC11(client, M41T80_REG_ALARM_HOUR);

	if (rc >= 0 && rc & M41T80_ALHOUR_HT) {
		if (m41t80_data->features & M41T80_FEATURE_HT) {
			FUNC13(&client->dev, &tm);
			FUNC3(&client->dev, "HT bit was set!\n");
			FUNC3(&client->dev, "Power Down at %ptR\n", &tm);
		}
		rc = FUNC12(client, M41T80_REG_ALARM_HOUR,
					       rc & ~M41T80_ALHOUR_HT);
	}

	if (rc < 0) {
		FUNC2(&client->dev, "Can't clear HT bit\n");
		return rc;
	}

	/* Make sure ST (stop) bit is cleared */
	rc = FUNC11(client, M41T80_REG_SEC);

	if (rc >= 0 && rc & M41T80_SEC_ST)
		rc = FUNC12(client, M41T80_REG_SEC,
					       rc & ~M41T80_SEC_ST);
	if (rc < 0) {
		FUNC2(&client->dev, "Can't clear ST bit\n");
		return rc;
	}

#ifdef CONFIG_RTC_DRV_M41T80_WDT
	if (m41t80_data->features & M41T80_FEATURE_HT) {
		save_client = client;
		rc = misc_register(&wdt_dev);
		if (rc)
			return rc;
		rc = register_reboot_notifier(&wdt_notifier);
		if (rc) {
			misc_deregister(&wdt_dev);
			return rc;
		}
	}
#endif
#ifdef CONFIG_COMMON_CLK
	if (m41t80_data->features & M41T80_FEATURE_SQ)
		m41t80_sqw_register_clk(m41t80_data);
#endif

	rc = FUNC20(m41t80_data->rtc);
	if (rc)
		return rc;

	return 0;
}