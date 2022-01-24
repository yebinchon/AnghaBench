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
struct max1600 {unsigned int code; int /*<<< orphan*/ * gpio; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  MAX1600_CHAN_A 129 
#define  MAX1600_CHAN_B 128 
 unsigned int MAX1600_CODE_HIGH ; 
 unsigned int MAX1600_CODE_LOW ; 
 int MAX1600_GPIO_0VPP ; 
 int MAX1600_GPIO_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char const*,int /*<<< orphan*/ ) ; 
 struct max1600* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 char*** max1600_gpio_name ; 

int FUNC5(struct device *dev, struct max1600 **ptr,
	unsigned int channel, unsigned int code)
{
	struct max1600 *m;
	int chan;
	int i;

	switch (channel) {
	case MAX1600_CHAN_A:
		chan = 0;
		break;
	case MAX1600_CHAN_B:
		chan = 1;
		break;
	default:
		return -EINVAL;
	}

	if (code != MAX1600_CODE_LOW && code != MAX1600_CODE_HIGH)
		return -EINVAL;

	m = FUNC4(dev, sizeof(*m), GFP_KERNEL);
	if (!m)
		return -ENOMEM;

	m->dev = dev;
	m->code = code;

	for (i = 0; i < MAX1600_GPIO_MAX; i++) {
		const char *name;

		name = max1600_gpio_name[chan][i];
		if (i != MAX1600_GPIO_0VPP) {
			m->gpio[i] = FUNC2(dev, name, GPIOD_OUT_LOW);
		} else {
			m->gpio[i] = FUNC3(dev, name,
							     GPIOD_OUT_LOW);
			if (!m->gpio[i])
				break;
		}
		if (FUNC0(m->gpio[i]))
			return FUNC1(m->gpio[i]);
	}

	*ptr = m;

	return 0;
}