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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ITERATIONS_SHORT ; 
 int /*<<< orphan*/  SONYPI_CAMERA_AGC ; 
 int /*<<< orphan*/  SONYPI_CAMERA_BRIGHTNESS ; 
 int /*<<< orphan*/  SONYPI_CAMERA_COLOR ; 
 int /*<<< orphan*/  SONYPI_CAMERA_CONTRAST ; 
 int /*<<< orphan*/  SONYPI_CAMERA_HUE ; 
 int /*<<< orphan*/  SONYPI_CAMERA_PICTURE ; 
 int /*<<< orphan*/  SONYPI_CAMERA_SHARPNESS ; 
#define  SONY_PIC_COMMAND_SETCAMERA 135 
#define  SONY_PIC_COMMAND_SETCAMERAAGC 134 
#define  SONY_PIC_COMMAND_SETCAMERABRIGHTNESS 133 
#define  SONY_PIC_COMMAND_SETCAMERACOLOR 132 
#define  SONY_PIC_COMMAND_SETCAMERACONTRAST 131 
#define  SONY_PIC_COMMAND_SETCAMERAHUE 130 
#define  SONY_PIC_COMMAND_SETCAMERAPICTURE 129 
#define  SONY_PIC_COMMAND_SETCAMERASHARPNESS 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  camera ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ spic_dev ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(int command, u8 value)
{
	if (!camera)
		return -EIO;

	FUNC2(&spic_dev.lock);

	switch (command) {
	case SONY_PIC_COMMAND_SETCAMERA:
		if (value)
			FUNC1();
		else
			FUNC0();
		break;
	case SONY_PIC_COMMAND_SETCAMERABRIGHTNESS:
		FUNC6(FUNC5(0x90, SONYPI_CAMERA_BRIGHTNESS, value),
				ITERATIONS_SHORT);
		break;
	case SONY_PIC_COMMAND_SETCAMERACONTRAST:
		FUNC6(FUNC5(0x90, SONYPI_CAMERA_CONTRAST, value),
				ITERATIONS_SHORT);
		break;
	case SONY_PIC_COMMAND_SETCAMERAHUE:
		FUNC6(FUNC5(0x90, SONYPI_CAMERA_HUE, value),
				ITERATIONS_SHORT);
		break;
	case SONY_PIC_COMMAND_SETCAMERACOLOR:
		FUNC6(FUNC5(0x90, SONYPI_CAMERA_COLOR, value),
				ITERATIONS_SHORT);
		break;
	case SONY_PIC_COMMAND_SETCAMERASHARPNESS:
		FUNC6(FUNC5(0x90, SONYPI_CAMERA_SHARPNESS, value),
				ITERATIONS_SHORT);
		break;
	case SONY_PIC_COMMAND_SETCAMERAPICTURE:
		FUNC6(FUNC5(0x90, SONYPI_CAMERA_PICTURE, value),
				ITERATIONS_SHORT);
		break;
	case SONY_PIC_COMMAND_SETCAMERAAGC:
		FUNC6(FUNC5(0x90, SONYPI_CAMERA_AGC, value),
				ITERATIONS_SHORT);
		break;
	default:
		FUNC4("sony_pic_camera_command invalid: %d\n", command);
		break;
	}
	FUNC3(&spic_dev.lock);
	return 0;
}