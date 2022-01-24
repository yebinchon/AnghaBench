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
typedef  int /*<<< orphan*/  u32 ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ IOCMD_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,scalar_t__,int /*<<< orphan*/ ) ; 

u8 FUNC3(struct _adapter *pAdapter, u32 cmd)
{
	int pollingcnts = 50;

	FUNC2(pAdapter, IOCMD_CTRL_REG, cmd);
	FUNC0(100);
	while ((FUNC1(pAdapter, IOCMD_CTRL_REG != 0)) &&
	       (pollingcnts > 0)) {
		pollingcnts--;
		FUNC0(20);
	}
	if (pollingcnts == 0)
		return false;
	return true;
}