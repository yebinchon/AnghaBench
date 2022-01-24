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
struct backlight_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ debug ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bd)
{
	int intensity;

	FUNC1(0x03, 0xb3);
	FUNC1(0xbf, 0xb2);
	intensity = FUNC0(0xb3) >> 4;

	if (debug)
		FUNC2("read brightness of %d\n", intensity);

	return intensity;
}