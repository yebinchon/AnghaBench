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
struct tape_device {int /*<<< orphan*/ * discdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tape_3590_wq ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*) ; 

__attribute__((used)) static void
FUNC3(struct tape_device *device)
{
	FUNC0(tape_3590_wq);
	FUNC2(device);

	FUNC1(device->discdata);
	device->discdata = NULL;
}