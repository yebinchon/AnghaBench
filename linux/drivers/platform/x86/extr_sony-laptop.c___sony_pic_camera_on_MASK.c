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
struct TYPE_2__ {int camera_power; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ITERATIONS_SHORT ; 
 int /*<<< orphan*/  SONYPI_CAMERA_CONTROL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  camera ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ spic_dev ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	int i, j, x;

	if (!camera) {
		FUNC2("camera control not enabled\n");
		return -ENODEV;
	}

	if (spic_dev.camera_power)
		return 0;

	for (j = 5; j > 0; j--) {

		for (x = 0; x < 100 && FUNC4(0x91, 0x1); x++)
			FUNC1(10);
		FUNC3(0x93);

		for (i = 400; i > 0; i--) {
			if (FUNC0())
				break;
			FUNC1(10);
		}
		if (i)
			break;
	}

	if (j == 0) {
		FUNC2("failed to power on camera\n");
		return -ENODEV;
	}

	FUNC6(FUNC5(0x90, SONYPI_CAMERA_CONTROL,
				0x5a),
			ITERATIONS_SHORT);

	spic_dev.camera_power = 1;
	return 0;
}