#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct controller_priv {int /*<<< orphan*/  reset_gpiod; TYPE_1__* class_dev; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  controller_index_ida ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct controller_priv* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct controller_priv *cd = FUNC3(pdev);
	int id = cd->class_dev->id;

	FUNC0(cd->class_dev);
	FUNC2(&controller_index_ida, id);
	FUNC1(cd->reset_gpiod, 1);
	return 0;
}