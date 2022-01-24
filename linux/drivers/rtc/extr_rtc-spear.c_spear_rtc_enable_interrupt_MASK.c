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
struct spear_rtc_config {scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ CTRL_REG ; 
 unsigned int INT_ENABLE ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct spear_rtc_config*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct spear_rtc_config *config)
{
	unsigned int val;

	val = FUNC0(config->ioaddr + CTRL_REG);
	if (!(val & INT_ENABLE)) {
		FUNC1(config);
		val |= INT_ENABLE;
		FUNC2(val, config->ioaddr + CTRL_REG);
	}
}