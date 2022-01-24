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
typedef  scalar_t__ uint ;
struct adapter {int hw_init_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ _SUCCESS ; 
 scalar_t__ FUNC1 (struct adapter*) ; 

uint FUNC2(struct adapter *adapt)
{
	uint status = _SUCCESS;

	status = FUNC1(adapt);

	if (status == _SUCCESS)
		adapt->hw_init_completed = false;
	else
		FUNC0("\n rtw_hal_deinit: hal_init fail\n");

	return status;
}