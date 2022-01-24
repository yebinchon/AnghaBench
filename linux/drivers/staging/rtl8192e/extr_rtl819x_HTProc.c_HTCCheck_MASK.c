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
typedef  int u8 ;
struct rtllib_device {int /*<<< orphan*/  dev; TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ bCurrentHTSupport; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

u8 FUNC3(struct rtllib_device *ieee, u8 *pFrame)
{
	if (ieee->pHTInfo->bCurrentHTSupport) {
		if ((FUNC1(pFrame) && FUNC0(pFrame)) == 1) {
			FUNC2(ieee->dev, "HT CONTROL FILED EXIST!!\n");
			return true;
		}
	}
	return false;
}