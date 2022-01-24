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
struct TYPE_2__ {int mah; int /*<<< orphan*/  permille; } ;
struct ab8500_fg {TYPE_1__ bat_cap; } ;

/* Variables and functions */
 int FUNC0 (struct ab8500_fg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_fg*,int) ; 
 int FUNC2 (struct ab8500_fg*,int) ; 
 int FUNC3 (struct ab8500_fg*) ; 
 int FUNC4 (struct ab8500_fg*) ; 

__attribute__((used)) static int FUNC5(struct ab8500_fg *di, bool comp)
{
	int permille, mah;

	if (comp)
		permille = FUNC3(di);
	else
		permille = FUNC4(di);

	mah = FUNC2(di, permille);

	di->bat_cap.mah = FUNC0(di, mah);
	di->bat_cap.permille =
		FUNC1(di, di->bat_cap.mah);

	return di->bat_cap.mah;
}