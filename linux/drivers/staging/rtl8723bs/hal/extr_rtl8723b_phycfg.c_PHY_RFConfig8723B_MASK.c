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
 int FUNC0 (struct adapter*) ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 

int FUNC2(struct adapter *Adapter)
{
	int rtStatus = _SUCCESS;

	/*  */
	/*  RF config */
	/*  */
	rtStatus = FUNC0(Adapter);

	FUNC1(Adapter);
	/* PHY_BB8723B_Config_1T(Adapter); */

	return rtStatus;
}