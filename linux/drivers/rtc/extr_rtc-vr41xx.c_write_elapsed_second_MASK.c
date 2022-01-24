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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int time64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEHREG ; 
 int /*<<< orphan*/  ETIMELREG ; 
 int /*<<< orphan*/  ETIMEMREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(time64_t sec)
{
	FUNC1(&rtc_lock);

	FUNC0(ETIMELREG, (uint16_t)(sec << 15));
	FUNC0(ETIMEMREG, (uint16_t)(sec >> 1));
	FUNC0(ETIMEHREG, (uint16_t)(sec >> 17));

	FUNC2(&rtc_lock);
}