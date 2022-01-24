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
struct gasket_internal_desc {int /*<<< orphan*/  mutex; int /*<<< orphan*/ ** devs; } ;
struct gasket_dev {size_t dev_idx; int /*<<< orphan*/  dev; struct gasket_internal_desc* internal_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gasket_dev *gasket_dev)
{
	struct gasket_internal_desc *internal_desc = gasket_dev->internal_desc;

	FUNC1(&internal_desc->mutex);
	internal_desc->devs[gasket_dev->dev_idx] = NULL;
	FUNC2(&internal_desc->mutex);
	FUNC3(gasket_dev->dev);
	FUNC0(gasket_dev);
}