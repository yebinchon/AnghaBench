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
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int nr_resets; struct device_node* of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct reset_simple_data {int active_low; TYPE_1__ rcdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  membase; } ;
struct device_node {int /*<<< orphan*/  name; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct reset_simple_data*) ; 
 struct reset_simple_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  reset_simple_ops ; 
 int FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct device_node *np)
{
	struct reset_simple_data *data;
	struct resource res;
	resource_size_t size;
	int ret;

	data = FUNC2(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC3(np, 0, &res);
	if (ret)
		goto err_alloc;

	size = FUNC6(&res);
	if (!FUNC4(res.start, size, np->name)) {
		ret = -EBUSY;
		goto err_alloc;
	}

	data->membase = FUNC0(res.start, size);
	if (!data->membase) {
		ret = -ENOMEM;
		goto err_alloc;
	}

	FUNC7(&data->lock);

	data->rcdev.owner = THIS_MODULE;
	data->rcdev.nr_resets = size * 8;
	data->rcdev.ops = &reset_simple_ops;
	data->rcdev.of_node = np;
	data->active_low = true;

	return FUNC5(&data->rcdev);

err_alloc:
	FUNC1(data);
	return ret;
}