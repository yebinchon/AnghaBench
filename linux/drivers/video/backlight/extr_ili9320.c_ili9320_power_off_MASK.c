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
struct ili9320 {int display1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ILI9320_DISPLAY1 ; 
 int ILI9320_DISPLAY1_BASEE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ili9320*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct ili9320 *lcd)
{
	lcd->display1 &= ~(FUNC0(3) | ILI9320_DISPLAY1_BASEE);
	FUNC1(lcd, ILI9320_DISPLAY1, lcd->display1);

	return 0;
}