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
struct regulator_desc {int (* of_parse_cb ) (struct device_node*,struct regulator_desc const*,struct regulator_config*) ;} ;
struct regulator_config {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 struct regulator_init_data* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct device_node*) ; 
 struct regulator_init_data* FUNC2 (struct device*,struct device_node*,struct regulator_desc const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device*,struct regulator_desc const*) ; 
 int FUNC5 (struct device_node*,struct regulator_desc const*,struct regulator_config*) ; 

struct regulator_init_data *FUNC6(struct device *dev,
					    const struct regulator_desc *desc,
					    struct regulator_config *config,
					    struct device_node **node)
{
	struct device_node *child;
	struct regulator_init_data *init_data = NULL;

	child = FUNC4(dev, desc);
	if (!child)
		return NULL;

	init_data = FUNC2(dev, child, desc);
	if (!init_data) {
		FUNC1(dev, "failed to parse DT for regulator %pOFn\n", child);
		goto error;
	}

	if (desc->of_parse_cb) {
		int ret;

		ret = desc->of_parse_cb(child, desc, config);
		if (ret) {
			if (ret == -EPROBE_DEFER) {
				FUNC3(child);
				return FUNC0(-EPROBE_DEFER);
			}
			FUNC1(dev,
				"driver callback failed to parse DT for regulator %pOFn\n",
				child);
			goto error;
		}
	}

	*node = child;

	return init_data;

error:
	FUNC3(child);

	return NULL;
}