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
typedef  int /*<<< orphan*/  u8 ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lcd_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct lcd_device *lcdev,
					u8 value)
{
	return FUNC0(lcdev, &value, 1, NULL, 0);
}