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
struct wilco_ec_device {scalar_t__ debugfs_pdev; scalar_t__ rtc_pdev; scalar_t__ telem_pdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct wilco_ec_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wilco_ec_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct wilco_ec_device *ec = FUNC2(pdev);

	FUNC3(ec);
	FUNC1(ec->telem_pdev);
	FUNC1(ec->rtc_pdev);
	if (ec->debugfs_pdev)
		FUNC1(ec->debugfs_pdev);

	/* Teardown cros_ec interface */
	FUNC0();

	return 0;
}