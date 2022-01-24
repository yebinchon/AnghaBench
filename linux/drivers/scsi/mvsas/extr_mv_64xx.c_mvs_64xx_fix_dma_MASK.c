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
typedef  int /*<<< orphan*/  u32 ;
struct mvs_prd {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct mvs_info {int /*<<< orphan*/  bulk_buffer_dma; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int MAX_SG_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mvs_info *mvi, u32 phy_mask,
				int buf_len, int from, void *prd)
{
	int i;
	struct mvs_prd *buf_prd = prd;
	dma_addr_t buf_dma = mvi->bulk_buffer_dma;

	buf_prd	+= from;
	for (i = 0; i < MAX_SG_ENTRY - from; i++) {
		buf_prd->addr = FUNC1(buf_dma);
		buf_prd->len = FUNC0(buf_len);
		++buf_prd;
	}
}