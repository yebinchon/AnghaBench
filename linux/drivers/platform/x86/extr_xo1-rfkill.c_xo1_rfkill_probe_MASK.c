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
struct rfkill {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,struct rfkill*) ; 
 struct rfkill* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 
 int /*<<< orphan*/  rfkill_ops ; 
 int FUNC3 (struct rfkill*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct rfkill *rfk;
	int r;

	rfk = FUNC1(pdev->name, &pdev->dev, RFKILL_TYPE_WLAN,
			   &rfkill_ops, NULL);
	if (!rfk)
		return -ENOMEM;

	r = FUNC3(rfk);
	if (r) {
		FUNC2(rfk);
		return r;
	}

	FUNC0(pdev, rfk);
	return 0;
}