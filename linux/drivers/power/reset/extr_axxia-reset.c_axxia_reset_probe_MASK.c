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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axxia_restart_nb ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  syscon ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int err;

	syscon = FUNC5(dev->of_node, "syscon");
	if (FUNC0(syscon)) {
		FUNC3("%pOFn: syscon lookup failed\n", dev->of_node);
		return FUNC1(syscon);
	}

	err = FUNC4(&axxia_restart_nb);
	if (err)
		FUNC2(dev, "cannot register restart handler (err=%d)\n", err);

	return err;
}