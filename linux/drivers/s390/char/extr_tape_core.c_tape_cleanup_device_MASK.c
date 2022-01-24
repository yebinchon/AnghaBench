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
struct tape_device {TYPE_1__* discipline; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* cleanup_device ) (struct tape_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct tape_device*) ; 

__attribute__((used)) static void
FUNC5(struct tape_device *device)
{
	FUNC4(device);
	device->discipline->cleanup_device(device);
	FUNC0(device->discipline->owner);
	FUNC3(device);
	FUNC2(device, MS_UNKNOWN);
}