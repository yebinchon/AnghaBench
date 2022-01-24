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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct ql_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ql_adapter*,scalar_t__,scalar_t__*) ; 

int FUNC1(struct ql_adapter *qdev, u32 reg, u64 *data)
{
	int status = 0;
	u32 hi = 0;
	u32 lo = 0;

	status = FUNC0(qdev, reg, &lo);
	if (status)
		goto exit;

	status = FUNC0(qdev, reg + 4, &hi);
	if (status)
		goto exit;

	*data = (u64) lo | ((u64) hi << 32);

exit:
	return status;
}