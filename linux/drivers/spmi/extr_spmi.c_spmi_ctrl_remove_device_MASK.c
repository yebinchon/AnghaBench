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
struct spmi_device {int dummy; } ;
struct device {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  spmi_dev_type ; 
 int /*<<< orphan*/  FUNC0 (struct spmi_device*) ; 
 struct spmi_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct spmi_device *spmidev = FUNC1(dev);
	if (dev->type == &spmi_dev_type)
		FUNC0(spmidev);
	return 0;
}