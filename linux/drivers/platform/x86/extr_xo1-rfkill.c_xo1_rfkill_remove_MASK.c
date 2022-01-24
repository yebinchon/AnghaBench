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
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct rfkill* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rfkill *rfk = FUNC0(pdev);
	FUNC2(rfk);
	FUNC1(rfk);
	return 0;
}