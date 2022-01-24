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
typedef  int /*<<< orphan*/  u16 ;
struct msm_pinctrl {int /*<<< orphan*/  dev; TYPE_1__* soc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int* reserved_gpios; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int const,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned int) ; 
 struct msm_pinctrl* FUNC6 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC10(struct gpio_chip *gc,
				    unsigned long *valid_mask,
				    unsigned int ngpios)
{
	struct msm_pinctrl *pctrl = FUNC6(gc);
	int ret;
	unsigned int len, i;
	const int *reserved = pctrl->soc->reserved_gpios;
	u16 *tmp;

	/* Driver provided reserved list overrides DT and ACPI */
	if (reserved) {
		FUNC0(valid_mask, ngpios);
		for (i = 0; reserved[i] >= 0; i++) {
			if (i >= ngpios || reserved[i] >= ngpios) {
				FUNC3(pctrl->dev, "invalid list of reserved GPIOs\n");
				return -EINVAL;
			}
			FUNC2(reserved[i], valid_mask);
		}

		return 0;
	}

	/* The number of GPIOs in the ACPI tables */
	len = ret = FUNC4(pctrl->dev, "gpios");
	if (ret < 0)
		return 0;

	if (ret > ngpios)
		return -EINVAL;

	tmp = FUNC8(len, sizeof(*tmp), GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	ret = FUNC5(pctrl->dev, "gpios", tmp, len);
	if (ret < 0) {
		FUNC3(pctrl->dev, "could not read list of GPIOs\n");
		goto out;
	}

	FUNC1(valid_mask, ngpios);
	for (i = 0; i < len; i++)
		FUNC9(tmp[i], valid_mask);

out:
	FUNC7(tmp);
	return ret;
}