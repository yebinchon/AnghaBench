#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv {TYPE_3__* rc; TYPE_1__ mas; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;
struct TYPE_5__ {int /*<<< orphan*/  bm; } ;
struct TYPE_6__ {TYPE_2__ cnflt_alien_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct uwb_rsv *rsv, struct uwb_mas_bm *mas)
{
	FUNC1(mas->bm, UWB_NUM_MAS);
	FUNC0(mas->bm, rsv->mas.bm, rsv->rc->cnflt_alien_bitmap.bm, UWB_NUM_MAS);
}