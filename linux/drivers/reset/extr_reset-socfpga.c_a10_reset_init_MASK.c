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
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int nr_resets; struct device_node* of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct reset_simple_data {int membase; int status_active_low; TYPE_1__ rcdev; int /*<<< orphan*/  lock; } ;
struct device_node {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SOCFPGA_NR_BANKS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct reset_simple_data*) ; 
 struct reset_simple_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  reset_simple_ops ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct device_node *np)
{
	struct reset_simple_data *data;
	struct resource res;
	resource_size_t size;
	int ret;
	u32 reg_offset = 0x10;

	data = FUNC2(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC3(np, 0, &res);
	if (ret)
		goto err_alloc;

	size = FUNC8(&res);
	if (!FUNC6(res.start, size, np->name)) {
		ret = -EBUSY;
		goto err_alloc;
	}

	data->membase = FUNC0(res.start, size);
	if (!data->membase) {
		ret = -ENOMEM;
		goto err_alloc;
	}

	if (FUNC4(np, "altr,modrst-offset", &reg_offset))
		FUNC5("missing altr,modrst-offset property, assuming 0x10\n");
	data->membase += reg_offset;

	FUNC9(&data->lock);

	data->rcdev.owner = THIS_MODULE;
	data->rcdev.nr_resets = SOCFPGA_NR_BANKS * 32;
	data->rcdev.ops = &reset_simple_ops;
	data->rcdev.of_node = np;
	data->status_active_low = true;

	return FUNC7(&data->rcdev);

err_alloc:
	FUNC1(data);
	return ret;
}