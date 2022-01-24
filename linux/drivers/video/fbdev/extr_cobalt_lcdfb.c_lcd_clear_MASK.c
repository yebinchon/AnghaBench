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
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_CLEAR ; 
 int /*<<< orphan*/  LCD_PRERESET ; 
 int /*<<< orphan*/  LCD_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info)
{
	int i;

	for (i = 0; i < 4; i++) {
		FUNC1(150);

		FUNC0(info, LCD_PRERESET);
	}

	FUNC1(150);

	FUNC0(info, LCD_CLEAR);

	FUNC1(150);

	FUNC0(info, LCD_RESET);
}