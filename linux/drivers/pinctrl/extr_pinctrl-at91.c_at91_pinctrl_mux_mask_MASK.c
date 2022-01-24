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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;
struct at91_pinctrl {int nmux; int /*<<< orphan*/  dev; int /*<<< orphan*/  mux_mask; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int gpio_banks ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct at91_pinctrl *info,
				 struct device_node *np)
{
	int ret = 0;
	int size;
	const __be32 *list;

	list = FUNC2(np, "atmel,mux-mask", &size);
	if (!list) {
		FUNC0(info->dev, "can not read the mux-mask of %d\n", size);
		return -EINVAL;
	}

	size /= sizeof(*list);
	if (!size || size % gpio_banks) {
		FUNC0(info->dev, "wrong mux mask array should be by %d\n", gpio_banks);
		return -EINVAL;
	}
	info->nmux = size / gpio_banks;

	info->mux_mask = FUNC1(info->dev, size, sizeof(u32),
				      GFP_KERNEL);
	if (!info->mux_mask)
		return -ENOMEM;

	ret = FUNC3(np, "atmel,mux-mask",
					  info->mux_mask, size);
	if (ret)
		FUNC0(info->dev, "can not read the mux-mask of %d\n", size);
	return ret;
}