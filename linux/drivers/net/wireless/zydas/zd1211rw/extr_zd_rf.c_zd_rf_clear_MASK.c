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
struct zd_rf {int /*<<< orphan*/  (* clear ) (struct zd_rf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_rf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_rf*) ; 

void FUNC2(struct zd_rf *rf)
{
	if (rf->clear)
		rf->clear(rf);
	FUNC0(rf, sizeof(*rf));
}