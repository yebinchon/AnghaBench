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
typedef  unsigned int u8 ;
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pinctrl_pin_desc {unsigned int number; char* name; } ;
struct msm_pingroup {unsigned int* pins; int npins; char* name; int ctl_reg; int io_reg; int intr_cfg_reg; int intr_status_reg; int intr_target_reg; int mux_bit; int drv_bit; int oe_bit; int out_bit; int intr_target_bit; int intr_target_kpss_val; int intr_raw_status_bit; int intr_polarity_bit; int intr_detection_bit; int intr_detection_width; scalar_t__ intr_status_bit; scalar_t__ intr_enable_bit; scalar_t__ in_bit; scalar_t__ pull_bit; } ;
struct msm_pinctrl_soc_data {int npins; int ngroups; int ngpios; struct msm_pingroup* groups; struct pinctrl_pin_desc* pins; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_GPIOS ; 
 int NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,unsigned int*,unsigned int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct msm_pinctrl_soc_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,struct msm_pinctrl_soc_data*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct msm_pinctrl_soc_data *pinctrl;
	struct pinctrl_pin_desc *pins;
	struct msm_pingroup *groups;
	char (*names)[NAME_SIZE];
	unsigned int i;
	u32 num_gpios;
	unsigned int avail_gpios; /* The number of GPIOs we support */
	u8 gpios[MAX_GPIOS];      /* An array of supported GPIOs */
	int ret;

	/* Query the number of GPIOs from ACPI */
	ret = FUNC2(&pdev->dev, "num-gpios", &num_gpios);
	if (ret < 0) {
		FUNC0(&pdev->dev, "missing 'num-gpios' property\n");
		return ret;
	}
	if (!num_gpios || num_gpios > MAX_GPIOS) {
		FUNC0(&pdev->dev, "invalid 'num-gpios' property\n");
		return -ENODEV;
	}

	/* The number of GPIOs in the approved list */
	ret = FUNC1(&pdev->dev, "gpios");
	if (ret < 0) {
		FUNC0(&pdev->dev, "missing 'gpios' property\n");
		return ret;
	}
	/*
	 * The number of available GPIOs should be non-zero, and no
	 * more than the total number of GPIOS.
	 */
	if (!ret || ret > num_gpios) {
		FUNC0(&pdev->dev, "invalid 'gpios' property\n");
		return -ENODEV;
	}
	avail_gpios = ret;

	ret = FUNC3(&pdev->dev, "gpios", gpios,
					    avail_gpios);
	if (ret < 0) {
		FUNC0(&pdev->dev, "could not read list of GPIOs\n");
		return ret;
	}

	pinctrl = FUNC5(&pdev->dev, sizeof(*pinctrl), GFP_KERNEL);
	pins = FUNC4(&pdev->dev, num_gpios,
		sizeof(struct pinctrl_pin_desc), GFP_KERNEL);
	groups = FUNC4(&pdev->dev, num_gpios,
		sizeof(struct msm_pingroup), GFP_KERNEL);
	names = FUNC4(&pdev->dev, avail_gpios, NAME_SIZE, GFP_KERNEL);

	if (!pinctrl || !pins || !groups || !names)
		return -ENOMEM;

	/*
	 * Initialize the array.  GPIOs not listed in the 'gpios' array
	 * still need a number, but nothing else.
	 */
	for (i = 0; i < num_gpios; i++) {
		pins[i].number = i;
		groups[i].pins = &pins[i].number;
	}

	/* Populate the entries that are meant to be exposed as GPIOs. */
	for (i = 0; i < avail_gpios; i++) {
		unsigned int gpio = gpios[i];

		groups[gpio].npins = 1;
		FUNC7(names[i], NAME_SIZE, "gpio%u", gpio);
		pins[gpio].name = names[i];
		groups[gpio].name = names[i];

		groups[gpio].ctl_reg = 0x10000 * gpio;
		groups[gpio].io_reg = 0x04 + 0x10000 * gpio;
		groups[gpio].intr_cfg_reg = 0x08 + 0x10000 * gpio;
		groups[gpio].intr_status_reg = 0x0c + 0x10000 * gpio;
		groups[gpio].intr_target_reg = 0x08 + 0x10000 * gpio;

		groups[gpio].mux_bit = 2;
		groups[gpio].pull_bit = 0;
		groups[gpio].drv_bit = 6;
		groups[gpio].oe_bit = 9;
		groups[gpio].in_bit = 0;
		groups[gpio].out_bit = 1;
		groups[gpio].intr_enable_bit = 0;
		groups[gpio].intr_status_bit = 0;
		groups[gpio].intr_target_bit = 5;
		groups[gpio].intr_target_kpss_val = 1;
		groups[gpio].intr_raw_status_bit = 4;
		groups[gpio].intr_polarity_bit = 1;
		groups[gpio].intr_detection_bit = 2;
		groups[gpio].intr_detection_width = 2;
	}

	pinctrl->pins = pins;
	pinctrl->groups = groups;
	pinctrl->npins = num_gpios;
	pinctrl->ngroups = num_gpios;
	pinctrl->ngpios = num_gpios;

	return FUNC6(pdev, pinctrl);
}