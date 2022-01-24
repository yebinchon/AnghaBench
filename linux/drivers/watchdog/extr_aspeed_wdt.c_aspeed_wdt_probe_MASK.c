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
typedef  scalar_t__ u32 ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct aspeed_wdt_config* data; } ;
struct device_node {int dummy; } ;
struct aspeed_wdt_config {scalar_t__ ext_pulse_width_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  groups; int /*<<< orphan*/  bootstatus; int /*<<< orphan*/  status; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  max_hw_heartbeat_ms; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct aspeed_wdt {int ctrl; TYPE_1__ wdd; scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 scalar_t__ WDT_ACTIVE_HIGH_MAGIC ; 
 scalar_t__ WDT_ACTIVE_LOW_MAGIC ; 
 scalar_t__ WDT_CTRL ; 
 int WDT_CTRL_1MHZ_CLK ; 
 int WDT_CTRL_BOOT_SECONDARY ; 
 int WDT_CTRL_ENABLE ; 
 int WDT_CTRL_RESET_MODE_ARM_CPU ; 
 int WDT_CTRL_RESET_MODE_FULL_CHIP ; 
 int WDT_CTRL_RESET_MODE_SOC ; 
 int WDT_CTRL_RESET_SYSTEM ; 
 int WDT_CTRL_WDT_EXT ; 
 int /*<<< orphan*/  WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  WDT_MAX_TIMEOUT_MS ; 
 scalar_t__ WDT_OPEN_DRAIN_MAGIC ; 
 scalar_t__ WDT_PUSH_PULL_MAGIC ; 
 scalar_t__ WDT_RESET_WIDTH ; 
 scalar_t__ WDT_TIMEOUT_STATUS ; 
 scalar_t__ WDT_TIMEOUT_STATUS_BOOT_SECONDARY ; 
 int /*<<< orphan*/  aspeed_wdt_info ; 
 int /*<<< orphan*/  aspeed_wdt_of_table ; 
 int /*<<< orphan*/  aspeed_wdt_ops ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  bswitch_groups ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct aspeed_wdt*) ; 
 struct aspeed_wdt* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,struct device_node*) ; 
 scalar_t__ FUNC13 (struct device_node*,char*) ; 
 int FUNC14 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct aspeed_wdt_config *config;
	const struct of_device_id *ofdid;
	struct aspeed_wdt *wdt;
	struct device_node *np;
	const char *reset_type;
	u32 duration;
	u32 status;
	int ret;

	wdt = FUNC6(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->base = FUNC7(pdev, 0);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	/*
	 * The ast2400 wdt can run at PCLK, or 1MHz. The ast2500 only
	 * runs at 1MHz. We chose to always run at 1MHz, as there's no
	 * good reason to have a faster watchdog counter.
	 */
	wdt->wdd.info = &aspeed_wdt_info;
	wdt->wdd.ops = &aspeed_wdt_ops;
	wdt->wdd.max_hw_heartbeat_ms = WDT_MAX_TIMEOUT_MS;
	wdt->wdd.parent = dev;

	wdt->wdd.timeout = WDT_DEFAULT_TIMEOUT;
	FUNC19(&wdt->wdd, 0, dev);

	np = dev->of_node;

	ofdid = FUNC12(aspeed_wdt_of_table, np);
	if (!ofdid)
		return -EINVAL;
	config = ofdid->data;

	wdt->ctrl = WDT_CTRL_1MHZ_CLK;

	/*
	 * Control reset on a per-device basis to ensure the
	 * host is not affected by a BMC reboot
	 */
	ret = FUNC14(np, "aspeed,reset-type", &reset_type);
	if (ret) {
		wdt->ctrl |= WDT_CTRL_RESET_MODE_SOC | WDT_CTRL_RESET_SYSTEM;
	} else {
		if (!FUNC18(reset_type, "cpu"))
			wdt->ctrl |= WDT_CTRL_RESET_MODE_ARM_CPU |
				     WDT_CTRL_RESET_SYSTEM;
		else if (!FUNC18(reset_type, "soc"))
			wdt->ctrl |= WDT_CTRL_RESET_MODE_SOC |
				     WDT_CTRL_RESET_SYSTEM;
		else if (!FUNC18(reset_type, "system"))
			wdt->ctrl |= WDT_CTRL_RESET_MODE_FULL_CHIP |
				     WDT_CTRL_RESET_SYSTEM;
		else if (FUNC18(reset_type, "none"))
			return -EINVAL;
	}
	if (FUNC13(np, "aspeed,external-signal"))
		wdt->ctrl |= WDT_CTRL_WDT_EXT;
	if (FUNC13(np, "aspeed,alt-boot"))
		wdt->ctrl |= WDT_CTRL_BOOT_SECONDARY;

	if (FUNC16(wdt->base + WDT_CTRL) & WDT_CTRL_ENABLE)  {
		/*
		 * The watchdog is running, but invoke aspeed_wdt_start() to
		 * write wdt->ctrl to WDT_CTRL to ensure the watchdog's
		 * configuration conforms to the driver's expectations.
		 * Primarily, ensure we're using the 1MHz clock source.
		 */
		FUNC2(&wdt->wdd);
		FUNC17(WDOG_HW_RUNNING, &wdt->wdd.status);
	}

	if ((FUNC11(np, "aspeed,ast2500-wdt")) ||
		(FUNC11(np, "aspeed,ast2600-wdt"))) {
		u32 reg = FUNC16(wdt->base + WDT_RESET_WIDTH);

		reg &= config->ext_pulse_width_mask;
		if (FUNC13(np, "aspeed,ext-push-pull"))
			reg |= WDT_PUSH_PULL_MAGIC;
		else
			reg |= WDT_OPEN_DRAIN_MAGIC;

		FUNC20(reg, wdt->base + WDT_RESET_WIDTH);

		reg &= config->ext_pulse_width_mask;
		if (FUNC13(np, "aspeed,ext-active-high"))
			reg |= WDT_ACTIVE_HIGH_MAGIC;
		else
			reg |= WDT_ACTIVE_LOW_MAGIC;

		FUNC20(reg, wdt->base + WDT_RESET_WIDTH);
	}

	if (!FUNC15(np, "aspeed,ext-pulse-duration", &duration)) {
		u32 max_duration = config->ext_pulse_width_mask + 1;

		if (duration == 0 || duration > max_duration) {
			FUNC3(dev, "Invalid pulse duration: %uus\n",
				duration);
			duration = FUNC9(1U, FUNC10(max_duration, duration));
			FUNC4(dev, "Pulse duration set to %uus\n",
				 duration);
		}

		/*
		 * The watchdog is always configured with a 1MHz source, so
		 * there is no need to scale the microsecond value. However we
		 * need to offset it - from the datasheet:
		 *
		 * "This register decides the asserting duration of wdt_ext and
		 * wdt_rstarm signal. The default value is 0xFF. It means the
		 * default asserting duration of wdt_ext and wdt_rstarm is
		 * 256us."
		 *
		 * This implies a value of 0 gives a 1us pulse.
		 */
		FUNC20(duration - 1, wdt->base + WDT_RESET_WIDTH);
	}

	status = FUNC16(wdt->base + WDT_TIMEOUT_STATUS);
	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY) {
		wdt->wdd.bootstatus = WDIOF_CARDRESET;

		if (FUNC11(np, "aspeed,ast2400-wdt") ||
		    FUNC11(np, "aspeed,ast2500-wdt"))
			wdt->wdd.groups = bswitch_groups;
	}

	FUNC5(dev, wdt);

	return FUNC8(dev, &wdt->wdd);
}