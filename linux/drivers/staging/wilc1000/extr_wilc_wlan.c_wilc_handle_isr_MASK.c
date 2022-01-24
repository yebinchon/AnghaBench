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
struct wilc {TYPE_1__* hif_func; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* hif_read_int ) (struct wilc*,int*) ;} ;

/* Variables and functions */
 int ALL_INT_EXT ; 
 int DATA_INT_EXT ; 
 int /*<<< orphan*/  WILC_BUS_ACQUIRE_AND_WAKEUP ; 
 int /*<<< orphan*/  WILC_BUS_RELEASE_ALLOW_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct wilc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wilc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc*,int) ; 

void FUNC5(struct wilc *wilc)
{
	u32 int_status;

	FUNC0(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
	wilc->hif_func->hif_read_int(wilc, &int_status);

	if (int_status & DATA_INT_EXT)
		FUNC4(wilc, int_status);

	if (!(int_status & (ALL_INT_EXT)))
		FUNC3(wilc);

	FUNC1(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
}