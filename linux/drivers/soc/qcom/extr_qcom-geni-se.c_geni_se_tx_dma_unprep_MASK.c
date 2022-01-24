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
struct geni_wrapper {int /*<<< orphan*/  dev; } ;
struct geni_se {struct geni_wrapper* wrapper; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

void FUNC2(struct geni_se *se, dma_addr_t iova, size_t len)
{
	struct geni_wrapper *wrapper = se->wrapper;

	if (iova && !FUNC0(wrapper->dev, iova))
		FUNC1(wrapper->dev, iova, len, DMA_TO_DEVICE);
}