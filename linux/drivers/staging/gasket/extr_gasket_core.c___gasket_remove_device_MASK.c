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
struct gasket_internal_desc {int /*<<< orphan*/  class; } ;
struct TYPE_2__ {int /*<<< orphan*/  devt; int /*<<< orphan*/  device; } ;
struct gasket_dev {TYPE_1__ dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gasket_internal_desc *internal_desc,
				   struct gasket_dev *gasket_dev)
{
	FUNC2(gasket_dev->dev_info.device);
	FUNC0(internal_desc->class, gasket_dev->dev_info.devt);
	FUNC1(gasket_dev);
}