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
struct device {int dummy; } ;
struct bsg_buffer {int /*<<< orphan*/  sg_list; int /*<<< orphan*/  payload_len; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct device *dev, struct bsg_buffer *buf,
		dma_addr_t dma_addr, void *p)
{
	if (p)
		FUNC0(dev, buf->payload_len, p, dma_addr);
	else
		FUNC1(dev, buf->sg_list, 1, DMA_BIDIRECTIONAL);
}