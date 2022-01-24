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
struct omapfb2_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb2_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omapfb2_device*) ; 
 struct omapfb2_device* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct omapfb2_device *fbdev = FUNC3(pdev);

	/* FIXME: wait till completion of pending events */

	FUNC2(fbdev);

	FUNC1(fbdev);

	FUNC0();

	return 0;
}