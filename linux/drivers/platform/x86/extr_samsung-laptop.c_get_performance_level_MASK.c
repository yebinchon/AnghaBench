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
struct samsung_laptop {struct sabi_config* config; } ;
struct sabi_data {scalar_t__* data; } ;
struct sabi_commands {int /*<<< orphan*/  get_performance_level; } ;
struct sabi_config {TYPE_1__* performance_levels; struct sabi_commands commands; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {char* name; scalar_t__ value; } ;

/* Variables and functions */
 struct samsung_laptop* FUNC0 (struct device*) ; 
 int FUNC1 (struct samsung_laptop*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sabi_data*) ; 
 int FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct samsung_laptop *samsung = FUNC0(dev);
	const struct sabi_config *config = samsung->config;
	const struct sabi_commands *commands = &config->commands;
	struct sabi_data sretval;
	int retval;
	int i;

	/* Read the state */
	retval = FUNC1(samsung, commands->get_performance_level,
			      NULL, &sretval);
	if (retval)
		return retval;

	/* The logic is backwards, yeah, lots of fun... */
	for (i = 0; config->performance_levels[i].name; ++i) {
		if (sretval.data[0] == config->performance_levels[i].value)
			return FUNC2(buf, "%s\n", config->performance_levels[i].name);
	}
	return FUNC2(buf, "%s\n", "unknown");
}