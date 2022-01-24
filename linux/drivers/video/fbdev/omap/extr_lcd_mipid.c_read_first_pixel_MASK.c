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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int data_lines; } ;
struct mipid_device {TYPE_1__ panel; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MIPID_CMD_READ_BLUE ; 
 int /*<<< orphan*/  MIPID_CMD_READ_GREEN ; 
 int /*<<< orphan*/  MIPID_CMD_READ_RED ; 
 int /*<<< orphan*/  FUNC1 (struct mipid_device*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC4(struct mipid_device *md)
{
	u16 pixel;
	u8 red, green, blue;

	FUNC2(&md->mutex);
	FUNC1(md, MIPID_CMD_READ_RED, &red, 1);
	FUNC1(md, MIPID_CMD_READ_GREEN, &green, 1);
	FUNC1(md, MIPID_CMD_READ_BLUE, &blue, 1);
	FUNC3(&md->mutex);

	switch (md->panel.data_lines) {
	case 16:
		pixel = ((red >> 1) << 11) | (green << 5) | (blue >> 1);
		break;
	case 24:
		/* 24 bit -> 16 bit */
		pixel = ((red >> 3) << 11) | ((green >> 2) << 5) |
			(blue >> 3);
		break;
	default:
		pixel = 0;
		FUNC0();
	}

	return pixel;
}