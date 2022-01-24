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
struct regulator_init_data {int dummy; } ;
struct regulator_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct regulator_init_data* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,struct device_node*,struct regulator_init_data**,struct regulator_desc const*) ; 

struct regulator_init_data *FUNC2(struct device *dev,
					  struct device_node *node,
					  const struct regulator_desc *desc)
{
	struct regulator_init_data *init_data;

	if (!node)
		return NULL;

	init_data = FUNC0(dev, sizeof(*init_data), GFP_KERNEL);
	if (!init_data)
		return NULL; /* Out of memory? */

	if (FUNC1(dev, node, &init_data, desc))
		return NULL;

	return init_data;
}