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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct dim_channel {int /*<<< orphan*/  dbr_size; scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ ch_addr; } ;
struct TYPE_6__ {TYPE_2__* dim2; TYPE_1__ atx_dbr; } ;
struct TYPE_5__ {int /*<<< orphan*/  MIEN; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAT_CT_VAL_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__ g ; 
 scalar_t__ FUNC2 (struct dim_channel*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

u8 FUNC4(struct dim_channel *ch, u8 is_tx, u16 ch_address,
		  u16 max_buffer_size)
{
	u8 ret = FUNC2(ch, CAT_CT_VAL_ASYNC, is_tx, ch_address,
				 max_buffer_size);

	if (is_tx && !g.atx_dbr.ch_addr) {
		g.atx_dbr.ch_addr = ch->addr;
		FUNC1(ch->addr, ch->dbr_size);
		FUNC3(FUNC0(20), &g.dim2->MIEN);
	}

	return ret;
}