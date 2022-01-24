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
struct TYPE_2__ {int /*<<< orphan*/  terminate_xmitthread_comp; } ;
struct adapter {TYPE_1__ xmitpriv; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(void *context)
{
	s32 err;
	struct adapter *padapter;


	err = _SUCCESS;
	padapter = context;

	FUNC3("RTW_XMIT_THREAD");

	do {
		err = FUNC2(padapter);
		FUNC1();
	} while (_SUCCESS == err);

	FUNC0(&padapter->xmitpriv.terminate_xmitthread_comp);

	FUNC4();
}