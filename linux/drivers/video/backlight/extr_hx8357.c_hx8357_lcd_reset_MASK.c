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
struct lcd_device {int dummy; } ;
struct hx8357_data {int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct hx8357_data* FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct lcd_device *lcdev)
{
	struct hx8357_data *lcd = FUNC1(lcdev);

	/* Reset the screen */
	FUNC0(lcd->reset, 1);
	FUNC3(10000, 12000);
	FUNC0(lcd->reset, 0);
	FUNC3(10000, 12000);
	FUNC0(lcd->reset, 1);

	/* The controller needs 120ms to recover from reset */
	FUNC2(120);
}