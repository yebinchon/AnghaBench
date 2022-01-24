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
struct platform_device {int dummy; } ;
struct dim2_hdm {int /*<<< orphan*/  (* disable_platform ) (struct platform_device*) ;int /*<<< orphan*/  netinfo_task; int /*<<< orphan*/  most_iface; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dim_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct dim2_hdm* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct dim2_hdm *dev = FUNC4(pdev);
	unsigned long flags;

	FUNC0(&dev->dev);
	FUNC3(&dev->most_iface);
	FUNC2(dev->netinfo_task);

	FUNC5(&dim_lock, flags);
	FUNC1();
	FUNC6(&dim_lock, flags);

	if (dev->disable_platform)
		dev->disable_platform(pdev);

	return 0;
}