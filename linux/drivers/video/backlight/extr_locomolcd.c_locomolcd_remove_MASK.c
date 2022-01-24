#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct locomo_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ power; scalar_t__ brightness; } ;
struct TYPE_6__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 TYPE_2__* locomolcd_bl_device ; 
 int /*<<< orphan*/ * locomolcd_dev ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct locomo_dev *dev)
{
	unsigned long flags;

	locomolcd_bl_device->props.brightness = 0;
	locomolcd_bl_device->props.power = 0;
	FUNC3(locomolcd_bl_device);

	FUNC0(locomolcd_bl_device);
	FUNC2(flags);
	locomolcd_dev = NULL;
	FUNC1(flags);
	return 0;
}