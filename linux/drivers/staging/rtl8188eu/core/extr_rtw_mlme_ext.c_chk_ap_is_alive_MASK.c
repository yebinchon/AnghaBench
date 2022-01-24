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
struct sta_info {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sta_info*) ; 
 scalar_t__ FUNC1 (struct sta_info*) ; 
 scalar_t__ FUNC2 (struct sta_info*) ; 
 scalar_t__ FUNC3 (struct sta_info*) ; 
 scalar_t__ FUNC4 (struct sta_info*) ; 
 scalar_t__ FUNC5 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sta_info*) ; 

__attribute__((used)) static u8 FUNC7(struct adapter *padapter, struct sta_info *psta)
{
	u8 ret = false;

	if ((FUNC4(psta) == FUNC1(psta)) &&
	    FUNC3(psta) == FUNC0(psta) &&
	    FUNC5(psta) == FUNC2(psta))
		ret = false;
	else
		ret = true;

	FUNC6(psta);

	return ret;
}