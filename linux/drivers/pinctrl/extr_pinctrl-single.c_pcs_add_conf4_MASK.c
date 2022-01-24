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
struct pcs_device {int /*<<< orphan*/  dev; } ;
struct pcs_conf_vals {int dummy; } ;
struct device_node {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcs_conf_vals**,int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct device_node*,char const*,unsigned int*,int) ; 
 int FUNC5 (unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct pcs_device *pcs, struct device_node *np,
			  const char *name, enum pin_config_param param,
			  struct pcs_conf_vals **conf, unsigned long **settings)
{
	unsigned value[4];
	int ret;

	/* value to set, enable, disable, mask */
	ret = FUNC4(np, name, value, 4);
	if (ret)
		return;
	if (!value[3]) {
		FUNC3(pcs->dev, "mask field of the property can't be 0\n");
		return;
	}
	value[0] &= value[3];
	value[1] &= value[3];
	value[2] &= value[3];
	ret = FUNC5(value[0], value[1], value[2]);
	if (ret < 0)
		FUNC2(pcs->dev, "failed to match enable or disable bits\n");
	FUNC0(conf, param, value[0], value[1], value[2], value[3]);
	FUNC1(settings, param, ret);
}