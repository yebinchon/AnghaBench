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
struct oxu_info {int /*<<< orphan*/ * hcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct oxu_info* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct oxu_info *info = FUNC1(pdev);

	FUNC0(pdev, info->hcd[0]);
	FUNC0(pdev, info->hcd[1]);

	return 0;
}