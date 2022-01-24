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
struct bd_table {TYPE_1__* start_bd; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int* offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  MARK_CHAIN_BD ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct bd_table *prev_table,
					struct bd_table *next_table,
					u32 bd_p_tab)
{
	/* Chain the prev table to next table */
	prev_table->start_bd[bd_p_tab-1].offset[0] =
				FUNC0(FUNC1(next_table->dma));

	prev_table->start_bd[bd_p_tab-1].offset[1] =
				FUNC0(FUNC2(next_table->dma));

	prev_table->start_bd[bd_p_tab-1].offset[2] =
				0x0;

	prev_table->start_bd[bd_p_tab-1].offset[3] =
				FUNC0(MARK_CHAIN_BD);
}