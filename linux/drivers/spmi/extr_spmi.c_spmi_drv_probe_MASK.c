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
struct spmi_driver {int (* probe ) (struct spmi_device*) ;} ;
struct spmi_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct spmi_device*) ; 
 struct spmi_device* FUNC7 (struct device*) ; 
 struct spmi_driver* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	const struct spmi_driver *sdrv = FUNC8(dev->driver);
	struct spmi_device *sdev = FUNC7(dev);
	int err;

	FUNC2(dev);
	FUNC4(dev);
	FUNC1(dev);

	err = sdrv->probe(sdev);
	if (err)
		goto fail_probe;

	return 0;

fail_probe:
	FUNC0(dev);
	FUNC5(dev);
	FUNC3(dev);
	return err;
}