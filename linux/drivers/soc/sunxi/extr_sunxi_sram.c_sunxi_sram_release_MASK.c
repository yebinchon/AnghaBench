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
struct sunxi_sram_desc {int claimed; } ;
struct sunxi_sram_data {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sunxi_sram_data const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sram_lock ; 
 struct sunxi_sram_data* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sunxi_sram_desc* FUNC4 (struct sunxi_sram_data const*) ; 

int FUNC5(struct device *dev)
{
	const struct sunxi_sram_data *sram_data;
	struct sunxi_sram_desc *sram_desc;

	if (!dev || !dev->of_node)
		return -EINVAL;

	sram_data = FUNC3(dev->of_node, NULL);
	if (FUNC0(sram_data))
		return -EINVAL;

	sram_desc = FUNC4(sram_data);

	FUNC1(&sram_lock);
	sram_desc->claimed = false;
	FUNC2(&sram_lock);

	return 0;
}