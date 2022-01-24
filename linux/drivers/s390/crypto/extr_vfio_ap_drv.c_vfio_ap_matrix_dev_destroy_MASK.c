#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {TYPE_2__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  matrix_bus ; 
 TYPE_1__* matrix_dev ; 
 int /*<<< orphan*/  matrix_driver ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct device *root_device = matrix_dev->device.parent;

	FUNC2(&matrix_driver);
	FUNC1(&matrix_dev->device);
	FUNC0(&matrix_bus);
	FUNC3(root_device);
}