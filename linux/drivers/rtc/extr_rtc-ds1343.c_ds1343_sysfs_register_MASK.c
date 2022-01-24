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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_glitch_filter ; 
 int /*<<< orphan*/  dev_attr_trickle_charger ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	int err;

	err = FUNC0(dev, &dev_attr_glitch_filter);
	if (err)
		return err;

	err = FUNC0(dev, &dev_attr_trickle_charger);
	if (!err)
		return 0;

	FUNC1(dev, &dev_attr_glitch_filter);

	return err;
}