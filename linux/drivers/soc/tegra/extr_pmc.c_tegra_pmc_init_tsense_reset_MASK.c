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
typedef  int u32 ;
struct tegra_pmc {struct device* dev; TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_tsense_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_SCRATCH54 ; 
 int PMC_SCRATCH54_ADDR_SHIFT ; 
 int PMC_SCRATCH54_DATA_SHIFT ; 
 int /*<<< orphan*/  PMC_SCRATCH55 ; 
 int PMC_SCRATCH55_CHECKSUM_SHIFT ; 
 int PMC_SCRATCH55_CNTRL_ID_SHIFT ; 
 int PMC_SCRATCH55_I2CSLV1_SHIFT ; 
 int PMC_SCRATCH55_PINMUX_SHIFT ; 
 int PMC_SCRATCH55_RESET_TEGRA ; 
 int /*<<< orphan*/  PMC_SENSOR_CTRL ; 
 int PMC_SENSOR_CTRL_ENABLE_RST ; 
 int PMC_SENSOR_CTRL_SCRATCH_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,int*) ; 
 int FUNC6 (struct tegra_pmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_pmc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct tegra_pmc *pmc)
{
	static const char disabled[] = "emergency thermal reset disabled";
	u32 pmu_addr, ctrl_id, reg_addr, reg_data, pinmux;
	struct device *dev = pmc->dev;
	struct device_node *np;
	u32 value, checksum;

	if (!pmc->soc->has_tsense_reset)
		return;

	np = FUNC3(pmc->dev->of_node, "i2c-thermtrip");
	if (!np) {
		FUNC2(dev, "i2c-thermtrip node not found, %s.\n", disabled);
		return;
	}

	if (FUNC5(np, "nvidia,i2c-controller-id", &ctrl_id)) {
		FUNC0(dev, "I2C controller ID missing, %s.\n", disabled);
		goto out;
	}

	if (FUNC5(np, "nvidia,bus-addr", &pmu_addr)) {
		FUNC0(dev, "nvidia,bus-addr missing, %s.\n", disabled);
		goto out;
	}

	if (FUNC5(np, "nvidia,reg-addr", &reg_addr)) {
		FUNC0(dev, "nvidia,reg-addr missing, %s.\n", disabled);
		goto out;
	}

	if (FUNC5(np, "nvidia,reg-data", &reg_data)) {
		FUNC0(dev, "nvidia,reg-data missing, %s.\n", disabled);
		goto out;
	}

	if (FUNC5(np, "nvidia,pinmux-id", &pinmux))
		pinmux = 0;

	value = FUNC6(pmc, PMC_SENSOR_CTRL);
	value |= PMC_SENSOR_CTRL_SCRATCH_WRITE;
	FUNC7(pmc, value, PMC_SENSOR_CTRL);

	value = (reg_data << PMC_SCRATCH54_DATA_SHIFT) |
		(reg_addr << PMC_SCRATCH54_ADDR_SHIFT);
	FUNC7(pmc, value, PMC_SCRATCH54);

	value = PMC_SCRATCH55_RESET_TEGRA;
	value |= ctrl_id << PMC_SCRATCH55_CNTRL_ID_SHIFT;
	value |= pinmux << PMC_SCRATCH55_PINMUX_SHIFT;
	value |= pmu_addr << PMC_SCRATCH55_I2CSLV1_SHIFT;

	/*
	 * Calculate checksum of SCRATCH54, SCRATCH55 fields. Bits 23:16 will
	 * contain the checksum and are currently zero, so they are not added.
	 */
	checksum = reg_addr + reg_data + (value & 0xff) + ((value >> 8) & 0xff)
		+ ((value >> 24) & 0xff);
	checksum &= 0xff;
	checksum = 0x100 - checksum;

	value |= checksum << PMC_SCRATCH55_CHECKSUM_SHIFT;

	FUNC7(pmc, value, PMC_SCRATCH55);

	value = FUNC6(pmc, PMC_SENSOR_CTRL);
	value |= PMC_SENSOR_CTRL_ENABLE_RST;
	FUNC7(pmc, value, PMC_SENSOR_CTRL);

	FUNC1(pmc->dev, "emergency thermal reset enabled\n");

out:
	FUNC4(np);
}