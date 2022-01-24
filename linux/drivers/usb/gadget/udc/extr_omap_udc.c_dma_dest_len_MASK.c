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
typedef  int u16 ;
struct omap_ep {int dma_counter; int /*<<< orphan*/  lch; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct omap_ep *ep, dma_addr_t start)
{
	dma_addr_t	end;

	end = FUNC1(ep->lch);
	if (end == ep->dma_counter)
		return 0;

	end |= start & (0xffff << 16);
	if (FUNC0())
		end++;
	if (end < start)
		end += 0x10000;
	return end - start;
}