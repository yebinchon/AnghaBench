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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  C2H_EVT_HOST_CLOSE ; 
 int /*<<< orphan*/  REG_C2HEVT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct adapter *adapter)
{
	FUNC0(adapter, REG_C2HEVT_CLEAR, C2H_EVT_HOST_CLOSE);
}