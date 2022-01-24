#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct nvmem_config {char* name; int word_size; int stride; struct ds1307* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; scalar_t__ size; } ;
struct i2c_device_id {size_t driver_data; } ;
struct TYPE_22__ {scalar_t__ of_node; } ;
struct i2c_client {int irq; TYPE_5__ dev; int /*<<< orphan*/  name; } ;
struct ds1307_platform_data {int trickle_charger_setup; } ;
struct ds1307 {int type; TYPE_1__* rtc; TYPE_5__* dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; TYPE_1__* regmap; } ;
struct chip_desc {size_t trickle_charger_reg; unsigned char bbsqi_bit; int offset; scalar_t__ nvram_size; scalar_t__ rtc_ops; scalar_t__ irq_handler; scalar_t__ alarm; } ;
struct acpi_device_id {size_t driver_data; } ;
typedef  int /*<<< orphan*/  regs ;
typedef  enum ds_type { ____Placeholder_ds_type } ds_type ;
struct TYPE_21__ {int uie_unsupported; int nvram_old_abi; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DS1307_BIT_12HR ; 
 unsigned char DS1307_BIT_PM ; 
 size_t DS1307_REG_HOUR ; 
 size_t DS1307_REG_WDAY ; 
 unsigned char DS1337_BIT_A1IE ; 
 unsigned char DS1337_BIT_A2IE ; 
 unsigned char DS1337_BIT_INTCN ; 
 unsigned char DS1337_BIT_OSF ; 
 unsigned char DS1337_BIT_nEOSC ; 
 size_t DS1337_REG_CONTROL ; 
 size_t DS1337_REG_STATUS ; 
 int DS13XX_TRICKLE_CHARGER_MAGIC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HAS_ALARM ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 unsigned char MCP794XX_BIT_VBATEN ; 
 int FUNC2 (TYPE_1__*) ; 
 unsigned char RX8025_BIT_2412 ; 
 unsigned char RX8025_BIT_PON ; 
 unsigned char RX8025_BIT_VDET ; 
 unsigned char RX8025_BIT_XST ; 
 int RX8025_REG_CTRL1 ; 
 int RX8025_REG_CTRL2 ; 
 struct acpi_device_id* FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC4 (int) ; 
 unsigned char FUNC5 (int) ; 
 struct chip_desc* chips ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*) ; 
 struct ds1307_platform_data* FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,struct ds1307*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int) ; 
 struct ds1307* FUNC14 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_5__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ds1307*) ; 
 TYPE_1__* FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  ds1307_acpi_ids ; 
 int FUNC18 (struct ds1307*) ; 
 int /*<<< orphan*/  FUNC19 (struct ds1307*) ; 
 int /*<<< orphan*/  FUNC20 (struct ds1307*) ; 
 int /*<<< orphan*/  ds1307_irq ; 
 int /*<<< orphan*/  ds1307_nvram_read ; 
 int /*<<< orphan*/  ds1307_nvram_write ; 
 int FUNC21 (struct ds1307*,struct chip_desc const*) ; 
 int /*<<< orphan*/  ds13xx_rtc_ops ; 
#define  ds_1337 136 
#define  ds_1339 135 
#define  ds_1340 134 
#define  ds_1341 133 
#define  ds_3231 132 
 int /*<<< orphan*/  FUNC22 (struct i2c_client*,struct ds1307*) ; 
#define  m41t0 131 
#define  m41t00 130 
#define  m41t11 129 
 int mcp794xx ; 
 scalar_t__ FUNC23 (TYPE_5__*) ; 
 scalar_t__ FUNC24 (scalar_t__,char*) ; 
 int FUNC25 (TYPE_1__*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  regmap_config ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,struct nvmem_config*) ; 
 int FUNC28 (TYPE_1__*) ; 
#define  rx_8025 128 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ds1307		*ds1307;
	int			err = -ENODEV;
	int			tmp;
	const struct chip_desc	*chip;
	bool			want_irq;
	bool			ds1307_can_wakeup_device = false;
	unsigned char		regs[8];
	struct ds1307_platform_data *pdata = FUNC9(&client->dev);
	u8			trickle_charger_setup = 0;

	ds1307 = FUNC14(&client->dev, sizeof(struct ds1307), GFP_KERNEL);
	if (!ds1307)
		return -ENOMEM;

	FUNC11(&client->dev, ds1307);
	ds1307->dev = &client->dev;
	ds1307->name = client->name;

	ds1307->regmap = FUNC15(client, &regmap_config);
	if (FUNC1(ds1307->regmap)) {
		FUNC8(ds1307->dev, "regmap allocation failed\n");
		return FUNC2(ds1307->regmap);
	}

	FUNC22(client, ds1307);

	if (client->dev.of_node) {
		ds1307->type = (enum ds_type)
			FUNC23(&client->dev);
		chip = &chips[ds1307->type];
	} else if (id) {
		chip = &chips[id->driver_data];
		ds1307->type = id->driver_data;
	} else {
		const struct acpi_device_id *acpi_id;

		acpi_id = FUNC3(FUNC0(ds1307_acpi_ids),
					    ds1307->dev);
		if (!acpi_id)
			return -ENODEV;
		chip = &chips[acpi_id->driver_data];
		ds1307->type = acpi_id->driver_data;
	}

	want_irq = client->irq > 0 && chip->alarm;

	if (!pdata)
		trickle_charger_setup = FUNC21(ds1307, chip);
	else if (pdata->trickle_charger_setup)
		trickle_charger_setup = pdata->trickle_charger_setup;

	if (trickle_charger_setup && chip->trickle_charger_reg) {
		trickle_charger_setup |= DS13XX_TRICKLE_CHARGER_MAGIC;
		FUNC7(ds1307->dev,
			"writing trickle charger info 0x%x to 0x%x\n",
			trickle_charger_setup, chip->trickle_charger_reg);
		FUNC26(ds1307->regmap, chip->trickle_charger_reg,
			     trickle_charger_setup);
	}

#ifdef CONFIG_OF
/*
 * For devices with no IRQ directly connected to the SoC, the RTC chip
 * can be forced as a wakeup source by stating that explicitly in
 * the device's .dts file using the "wakeup-source" boolean property.
 * If the "wakeup-source" property is set, don't request an IRQ.
 * This will guarantee the 'wakealarm' sysfs entry is available on the device,
 * if supported by the RTC.
 */
	if (chip->alarm && of_property_read_bool(client->dev.of_node,
						 "wakeup-source"))
		ds1307_can_wakeup_device = true;
#endif

	switch (ds1307->type) {
	case ds_1337:
	case ds_1339:
	case ds_1341:
	case ds_3231:
		/* get registers that the "rtc" read below won't read... */
		err = FUNC25(ds1307->regmap, DS1337_REG_CONTROL,
				       regs, 2);
		if (err) {
			FUNC7(ds1307->dev, "read error %d\n", err);
			goto exit;
		}

		/* oscillator off?  turn it on, so clock can tick. */
		if (regs[0] & DS1337_BIT_nEOSC)
			regs[0] &= ~DS1337_BIT_nEOSC;

		/*
		 * Using IRQ or defined as wakeup-source?
		 * Disable the square wave and both alarms.
		 * For some variants, be sure alarms can trigger when we're
		 * running on Vbackup (BBSQI/BBSQW)
		 */
		if (want_irq || ds1307_can_wakeup_device) {
			regs[0] |= DS1337_BIT_INTCN | chip->bbsqi_bit;
			regs[0] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
		}

		FUNC26(ds1307->regmap, DS1337_REG_CONTROL,
			     regs[0]);

		/* oscillator fault?  clear flag, and warn */
		if (regs[1] & DS1337_BIT_OSF) {
			FUNC26(ds1307->regmap, DS1337_REG_STATUS,
				     regs[1] & ~DS1337_BIT_OSF);
			FUNC12(ds1307->dev, "SET TIME!\n");
		}
		break;

	case rx_8025:
		err = FUNC25(ds1307->regmap,
				       RX8025_REG_CTRL1 << 4 | 0x08, regs, 2);
		if (err) {
			FUNC7(ds1307->dev, "read error %d\n", err);
			goto exit;
		}

		/* oscillator off?  turn it on, so clock can tick. */
		if (!(regs[1] & RX8025_BIT_XST)) {
			regs[1] |= RX8025_BIT_XST;
			FUNC26(ds1307->regmap,
				     RX8025_REG_CTRL2 << 4 | 0x08,
				     regs[1]);
			FUNC12(ds1307->dev,
				 "oscillator stop detected - SET TIME!\n");
		}

		if (regs[1] & RX8025_BIT_PON) {
			regs[1] &= ~RX8025_BIT_PON;
			FUNC26(ds1307->regmap,
				     RX8025_REG_CTRL2 << 4 | 0x08,
				     regs[1]);
			FUNC12(ds1307->dev, "power-on detected\n");
		}

		if (regs[1] & RX8025_BIT_VDET) {
			regs[1] &= ~RX8025_BIT_VDET;
			FUNC26(ds1307->regmap,
				     RX8025_REG_CTRL2 << 4 | 0x08,
				     regs[1]);
			FUNC12(ds1307->dev, "voltage drop detected\n");
		}

		/* make sure we are running in 24hour mode */
		if (!(regs[0] & RX8025_BIT_2412)) {
			u8 hour;

			/* switch to 24 hour mode */
			FUNC26(ds1307->regmap,
				     RX8025_REG_CTRL1 << 4 | 0x08,
				     regs[0] | RX8025_BIT_2412);

			err = FUNC25(ds1307->regmap,
					       RX8025_REG_CTRL1 << 4 | 0x08,
					       regs, 2);
			if (err) {
				FUNC7(ds1307->dev, "read error %d\n", err);
				goto exit;
			}

			/* correct hour */
			hour = FUNC4(regs[DS1307_REG_HOUR]);
			if (hour == 12)
				hour = 0;
			if (regs[DS1307_REG_HOUR] & DS1307_BIT_PM)
				hour += 12;

			FUNC26(ds1307->regmap,
				     DS1307_REG_HOUR << 4 | 0x08, hour);
		}
		break;
	default:
		break;
	}

	/* read RTC registers */
	err = FUNC25(ds1307->regmap, chip->offset, regs,
			       sizeof(regs));
	if (err) {
		FUNC7(ds1307->dev, "read error %d\n", err);
		goto exit;
	}

	if (ds1307->type == mcp794xx &&
	    !(regs[DS1307_REG_WDAY] & MCP794XX_BIT_VBATEN)) {
		FUNC26(ds1307->regmap, DS1307_REG_WDAY,
			     regs[DS1307_REG_WDAY] |
			     MCP794XX_BIT_VBATEN);
	}

	tmp = regs[DS1307_REG_HOUR];
	switch (ds1307->type) {
	case ds_1340:
	case m41t0:
	case m41t00:
	case m41t11:
		/*
		 * NOTE: ignores century bits; fix before deploying
		 * systems that will run through year 2100.
		 */
		break;
	case rx_8025:
		break;
	default:
		if (!(tmp & DS1307_BIT_12HR))
			break;

		/*
		 * Be sure we're in 24 hour mode.  Multi-master systems
		 * take note...
		 */
		tmp = FUNC4(tmp & 0x1f);
		if (tmp == 12)
			tmp = 0;
		if (regs[DS1307_REG_HOUR] & DS1307_BIT_PM)
			tmp += 12;
		FUNC26(ds1307->regmap, chip->offset + DS1307_REG_HOUR,
			     FUNC5(tmp));
	}

	if (want_irq || ds1307_can_wakeup_device) {
		FUNC13(ds1307->dev, true);
		FUNC29(HAS_ALARM, &ds1307->flags);
	}

	ds1307->rtc = FUNC17(ds1307->dev);
	if (FUNC1(ds1307->rtc))
		return FUNC2(ds1307->rtc);

	if (ds1307_can_wakeup_device && !want_irq) {
		FUNC10(ds1307->dev,
			 "'wakeup-source' is set, request for an IRQ is disabled!\n");
		/* We cannot support UIE mode if we do not have an IRQ line */
		ds1307->rtc->uie_unsupported = 1;
	}

	if (want_irq) {
		err = FUNC16(ds1307->dev, client->irq, NULL,
						chip->irq_handler ?: ds1307_irq,
						IRQF_SHARED | IRQF_ONESHOT,
						ds1307->name, ds1307);
		if (err) {
			client->irq = 0;
			FUNC13(ds1307->dev, false);
			FUNC6(HAS_ALARM, &ds1307->flags);
			FUNC8(ds1307->dev, "unable to request IRQ!\n");
		} else {
			FUNC7(ds1307->dev, "got IRQ %d\n", client->irq);
		}
	}

	ds1307->rtc->ops = chip->rtc_ops ?: &ds13xx_rtc_ops;
	err = FUNC18(ds1307);
	if (err)
		return err;

	err = FUNC28(ds1307->rtc);
	if (err)
		return err;

	if (chip->nvram_size) {
		struct nvmem_config nvmem_cfg = {
			.name = "ds1307_nvram",
			.word_size = 1,
			.stride = 1,
			.size = chip->nvram_size,
			.reg_read = ds1307_nvram_read,
			.reg_write = ds1307_nvram_write,
			.priv = ds1307,
		};

		ds1307->rtc->nvram_old_abi = true;
		FUNC27(ds1307->rtc, &nvmem_cfg);
	}

	FUNC20(ds1307);
	FUNC19(ds1307);

	return 0;

exit:
	return err;
}