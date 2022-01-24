#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int btdmAntNum; } ;
struct TYPE_8__ {TYPE_1__ boardInfo; } ;
typedef  TYPE_2__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(PBTC_COEXIST pBtCoexist)
{
	if (!FUNC2(pBtCoexist))
		return;

	/* Power on setting function is only added in 8723B currently */
	if (pBtCoexist->boardInfo.btdmAntNum == 2)
		FUNC1(pBtCoexist);
	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
		FUNC0(pBtCoexist);
}