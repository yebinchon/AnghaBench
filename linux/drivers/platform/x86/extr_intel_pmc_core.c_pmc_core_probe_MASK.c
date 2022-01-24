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
typedef  scalar_t__ u64 ;
struct x86_cpu_id {scalar_t__ driver_data; } ;
struct pmc_reg_map {int /*<<< orphan*/  regmap_length; scalar_t__ slp_s0_offset; } ;
struct pmc_dev {int /*<<< orphan*/  pmc_xram_read_bit; int /*<<< orphan*/  lock; int /*<<< orphan*/  regbase; struct pmc_reg_map* map; scalar_t__ base_addr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ PMC_BASE_ADDR_DEFAULT ; 
 struct pmc_reg_map cnp_reg_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_pmc_core_ids ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct pmc_dev*) ; 
 struct pmc_dev pmc ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct pmc_dev*) ; 
 int /*<<< orphan*/  pmc_core_dmi_table ; 
 int /*<<< orphan*/  pmc_pci_ids ; 
 struct pmc_reg_map spt_reg_map ; 
 struct x86_cpu_id* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	static bool device_initialized;
	struct pmc_dev *pmcdev = &pmc;
	const struct x86_cpu_id *cpu_id;
	u64 slp_s0_addr;

	if (device_initialized)
		return -ENODEV;

	cpu_id = FUNC11(intel_pmc_core_ids);
	if (!cpu_id)
		return -ENODEV;

	pmcdev->map = (struct pmc_reg_map *)cpu_id->driver_data;

	/*
	 * Coffeelake has CPU ID of Kabylake and Cannonlake PCH. So here
	 * Sunrisepoint PCH regmap can't be used. Use Cannonlake PCH regmap
	 * in this case.
	 */
	if (pmcdev->map == &spt_reg_map && !FUNC7(pmc_pci_ids))
		pmcdev->map = &cnp_reg_map;

	if (FUNC4(&slp_s0_addr)) {
		pmcdev->base_addr = PMC_BASE_ADDR_DEFAULT;

		if (FUNC6(FUNC0(pmcdev->base_addr)))
			return -ENODEV;
	} else {
		pmcdev->base_addr = slp_s0_addr - pmcdev->map->slp_s0_offset;
	}

	pmcdev->regbase = FUNC3(pmcdev->base_addr,
				  pmcdev->map->regmap_length);
	if (!pmcdev->regbase)
		return -ENOMEM;

	FUNC5(&pmcdev->lock);
	FUNC8(pdev, pmcdev);
	pmcdev->pmc_xram_read_bit = FUNC9();
	FUNC2(pmc_core_dmi_table);

	FUNC10(pmcdev);

	device_initialized = true;
	FUNC1(&pdev->dev, " initialized\n");

	return 0;
}