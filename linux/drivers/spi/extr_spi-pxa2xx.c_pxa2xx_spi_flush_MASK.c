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
struct driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSDR ; 
 int /*<<< orphan*/  SSSR ; 
 int SSSR_BSY ; 
 int SSSR_RNE ; 
 int /*<<< orphan*/  SSSR_ROR ; 
 int loops_per_jiffy ; 
 int FUNC0 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*,int /*<<< orphan*/ ) ; 

int FUNC2(struct driver_data *drv_data)
{
	unsigned long limit = loops_per_jiffy << 1;

	do {
		while (FUNC0(drv_data, SSSR) & SSSR_RNE)
			FUNC0(drv_data, SSDR);
	} while ((FUNC0(drv_data, SSSR) & SSSR_BSY) && --limit);
	FUNC1(drv_data, SSSR_ROR);

	return limit;
}