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
 int BIT1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ rOFDM0_RxDSP ; 
 int FUNC1 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter, bool enable)
{
	if (enable) {
		FUNC0("Enable notch filter\n");
		FUNC2(adapter, rOFDM0_RxDSP+1, FUNC1(adapter, rOFDM0_RxDSP+1) | BIT1);
	} else {
		FUNC0("Disable notch filter\n");
		FUNC2(adapter, rOFDM0_RxDSP+1, FUNC1(adapter, rOFDM0_RxDSP+1) & ~BIT1);
	}
}