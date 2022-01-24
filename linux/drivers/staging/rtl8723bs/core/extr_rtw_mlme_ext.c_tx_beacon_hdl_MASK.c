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
typedef  int /*<<< orphan*/  u8 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2C_PARAMETERS_ERROR ; 
 int /*<<< orphan*/  H2C_SUCCESS ; 
 scalar_t__ _FAIL ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 

u8 FUNC3(struct adapter *padapter, unsigned char *pbuf)
{
	if (FUNC2(padapter) == _FAIL) {
		FUNC0("issue_beacon, fail!\n");
		return H2C_PARAMETERS_ERROR;
	}

	/* tx bc/mc frames after update TIM */
	FUNC1(padapter, NULL);

	return H2C_SUCCESS;
}