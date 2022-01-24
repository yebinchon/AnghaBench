#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct charger_desc {int dummy; } ;

/* Variables and functions */
 struct charger_desc* FUNC0 (TYPE_1__*) ; 
 struct charger_desc* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static inline struct charger_desc *FUNC2(struct platform_device *pdev)
{
	if (pdev->dev.of_node)
		return FUNC1(&pdev->dev);
	return FUNC0(&pdev->dev);
}