#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int STS_PCD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* ehci_regs ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int port)
{
	u32 status;
	int ret, reps;

	for (reps = 0; reps < 300; reps++) {
		status = FUNC2(&ehci_regs->status);
		if (status & STS_PCD)
			break;
		FUNC0(1);
	}
	ret = FUNC1(port);
	if (ret == 0)
		return 0;
	return -ENOTCONN;
}