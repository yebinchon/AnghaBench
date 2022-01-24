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
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PIN_CONFIG_BIAS_DISABLE ; 
 int PIN_CONFIG_DRIVE_STRENGTH ; 
 unsigned long* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 unsigned long FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*) ; 
 int FUNC6 (struct device_node*) ; 
 int FUNC7 (struct device_node*) ; 

__attribute__((used)) static unsigned long *FUNC8(struct device_node *node,
						   unsigned int *len)
{
	unsigned long *pinconfig;
	unsigned int configlen = 0, idx = 0;
	int ret;

	if (FUNC5(node))
		configlen++;
	if (FUNC4(node))
		configlen++;

	/*
	 * If we don't have any configuration, bail out
	 */
	if (!configlen)
		return NULL;

	pinconfig = FUNC1(configlen, sizeof(*pinconfig), GFP_KERNEL);
	if (!pinconfig)
		return FUNC0(-ENOMEM);

	if (FUNC5(node)) {
		int drive = FUNC7(node);
		if (drive < 0) {
			ret = drive;
			goto err_free;
		}

		pinconfig[idx++] = FUNC3(PIN_CONFIG_DRIVE_STRENGTH,
							  drive);
	}

	if (FUNC4(node)) {
		int pull = FUNC6(node);
		int arg = 0;
		if (pull < 0) {
			ret = pull;
			goto err_free;
		}

		if (pull != PIN_CONFIG_BIAS_DISABLE)
			arg = 1; /* hardware uses weak pull resistors */

		pinconfig[idx++] = FUNC3(pull, arg);
	}


	*len = configlen;
	return pinconfig;

err_free:
	FUNC2(pinconfig);
	return FUNC0(ret);
}