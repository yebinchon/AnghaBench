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
struct platform_device {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ci_ida ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 

void FUNC2(struct platform_device *pdev)
{
	int id = pdev->id;
	FUNC1(pdev);
	FUNC0(&ci_ida, id);
}