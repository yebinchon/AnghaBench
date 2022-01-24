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
typedef  scalar_t__ u32 ;
struct resource {scalar_t__ start; } ;
struct qcom_smem {TYPE_1__* regions; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  size; scalar_t__ aux_base; int /*<<< orphan*/  virt_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 

__attribute__((used)) static int FUNC6(struct qcom_smem *smem, struct device *dev,
				const char *name, int i)
{
	struct device_node *np;
	struct resource r;
	resource_size_t size;
	int ret;

	np = FUNC4(dev->of_node, name, 0);
	if (!np) {
		FUNC0(dev, "No %s specified\n", name);
		return -EINVAL;
	}

	ret = FUNC2(np, 0, &r);
	FUNC3(np);
	if (ret)
		return ret;
	size = FUNC5(&r);

	smem->regions[i].virt_base = FUNC1(dev, r.start, size);
	if (!smem->regions[i].virt_base)
		return -ENOMEM;
	smem->regions[i].aux_base = (u32)r.start;
	smem->regions[i].size = size;

	return 0;
}