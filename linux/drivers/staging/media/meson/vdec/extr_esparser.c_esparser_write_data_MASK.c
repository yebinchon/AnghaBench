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
typedef  int u32 ;
struct amvdec_core {int dummy; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int ES_PACK_SIZE_BIT ; 
 int ES_PARSER_START ; 
 int ES_SEARCH ; 
 int ES_WRITE ; 
 int FETCH_ENDIAN_BIT ; 
 int HZ ; 
 int /*<<< orphan*/  PARSER_CONTROL ; 
 int /*<<< orphan*/  PARSER_FETCH_ADDR ; 
 int /*<<< orphan*/  PARSER_FETCH_CMD ; 
 int /*<<< orphan*/  PFIFO_RD_PTR ; 
 int /*<<< orphan*/  PFIFO_WR_PTR ; 
 int SEARCH_PATTERN_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ search_done ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int
FUNC2(struct amvdec_core *core, dma_addr_t addr, u32 size)
{
	FUNC0(core, PFIFO_RD_PTR, 0);
	FUNC0(core, PFIFO_WR_PTR, 0);
	FUNC0(core, PARSER_CONTROL,
			    ES_WRITE |
			    ES_PARSER_START |
			    ES_SEARCH |
			    (size << ES_PACK_SIZE_BIT));

	FUNC0(core, PARSER_FETCH_ADDR, addr);
	FUNC0(core, PARSER_FETCH_CMD,
			    (7 << FETCH_ENDIAN_BIT) |
			    (size + SEARCH_PATTERN_LEN));

	search_done = 0;
	return FUNC1(wq, search_done, (HZ / 5));
}