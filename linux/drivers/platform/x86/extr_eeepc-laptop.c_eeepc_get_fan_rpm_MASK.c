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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  EEEPC_EC_FAN_HRPM ; 
 int /*<<< orphan*/  EEEPC_EC_FAN_LRPM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(void)
{
	u8 high = 0;
	u8 low = 0;

	FUNC0(EEEPC_EC_FAN_HRPM, &high);
	FUNC0(EEEPC_EC_FAN_LRPM, &low);
	return high << 8 | low;
}