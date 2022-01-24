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
struct TYPE_2__ {scalar_t__ camera_power; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ITERATIONS_SHORT ; 
 int /*<<< orphan*/  SONYPI_CAMERA_MUTE_MASK ; 
 int /*<<< orphan*/  SONYPI_CAMERA_PICTURE ; 
 int /*<<< orphan*/  camera ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ spic_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	if (!camera) {
		FUNC0("camera control not enabled\n");
		return -ENODEV;
	}

	FUNC3(FUNC2(0x90, SONYPI_CAMERA_PICTURE,
				SONYPI_CAMERA_MUTE_MASK),
			ITERATIONS_SHORT);

	if (spic_dev.camera_power) {
		FUNC1(0x91, 0);
		spic_dev.camera_power = 0;
	}
	return 0;
}