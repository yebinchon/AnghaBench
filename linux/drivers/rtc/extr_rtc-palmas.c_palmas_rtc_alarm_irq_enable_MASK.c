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
struct palmas {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_RTC_BASE ; 
 int /*<<< orphan*/  PALMAS_RTC_INTERRUPTS_REG ; 
 int /*<<< orphan*/  PALMAS_RTC_INTERRUPTS_REG_IT_ALARM ; 
 struct palmas* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned enabled)
{
	struct palmas *palmas = FUNC0(dev->parent);
	u8 val;

	val = enabled ? PALMAS_RTC_INTERRUPTS_REG_IT_ALARM : 0;
	return FUNC1(palmas, PALMAS_RTC_BASE,
		PALMAS_RTC_INTERRUPTS_REG, val);
}