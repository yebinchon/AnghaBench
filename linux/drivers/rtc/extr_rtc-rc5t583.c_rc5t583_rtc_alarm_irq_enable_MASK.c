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
struct rc5t583 {int /*<<< orphan*/  regmap; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  RC5T583_RTC_CTL1 ; 
 int /*<<< orphan*/  SET_YAL ; 
 struct rc5t583* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned enabled)
{
	struct rc5t583 *rc5t583 = FUNC0(dev->parent);
	u8 val;

	/* Set Y-Alarm, based on 'enabled' */
	val = enabled ? SET_YAL : 0;

	return FUNC1(rc5t583->regmap, RC5T583_RTC_CTL1, SET_YAL,
		val);
}