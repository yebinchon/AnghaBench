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
struct gr_udc {int /*<<< orphan*/  desc_pool; } ;
struct gr_dma_desc {scalar_t__ paddr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gr_dma_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct gr_udc *dev,
				    struct gr_dma_desc *desc)
{
	FUNC0(dev->desc_pool, desc, (dma_addr_t)desc->paddr);
}