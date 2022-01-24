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
typedef  int /*<<< orphan*/  u8 ;
struct dim_channel {scalar_t__ addr; scalar_t__ dbr_addr; int /*<<< orphan*/  dbr_size; } ;
struct TYPE_5__ {scalar_t__ ch_addr; } ;
struct TYPE_6__ {TYPE_2__ atx_dbr; TYPE_1__* dim2; int /*<<< orphan*/  dim_is_initialized; } ;
struct TYPE_4__ {int /*<<< orphan*/  MIEN; } ;

/* Variables and functions */
 scalar_t__ DBR_SIZE ; 
 int /*<<< orphan*/  DIM_ERR_DRIVER_NOT_INITIALIZED ; 
 int /*<<< orphan*/  DIM_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__ g ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

u8 FUNC3(struct dim_channel *ch)
{
	if (!g.dim_is_initialized || !ch)
		return DIM_ERR_DRIVER_NOT_INITIALIZED;

	if (ch->addr == g.atx_dbr.ch_addr) {
		FUNC2(0, &g.dim2->MIEN);
		g.atx_dbr.ch_addr = 0;
	}

	FUNC0(ch->addr);
	if (ch->dbr_addr < DBR_SIZE)
		FUNC1(ch->dbr_addr, ch->dbr_size);
	ch->dbr_addr = DBR_SIZE;

	return DIM_NO_ERROR;
}