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
struct regulator_desc {int dummy; } ;
struct fan53555_platform_data {int /*<<< orphan*/  sleep_vsel_id; int /*<<< orphan*/  regulator; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct fan53555_platform_data* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct device_node*,struct regulator_desc const*) ; 
 int FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fan53555_platform_data *FUNC3(struct device *dev,
					      struct device_node *np,
					      const struct regulator_desc *desc)
{
	struct fan53555_platform_data *pdata;
	int ret;
	u32 tmp;

	pdata = FUNC0(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	pdata->regulator = FUNC1(dev, np, desc);

	ret = FUNC2(np, "fcs,suspend-voltage-selector",
				   &tmp);
	if (!ret)
		pdata->sleep_vsel_id = tmp;

	return pdata;
}