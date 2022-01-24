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
struct slgt_info {int /*<<< orphan*/  pdev; } ;
struct slgt_desc {scalar_t__ buf_dma_addr; int /*<<< orphan*/  pbuf; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMABUFSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct slgt_info *info, struct slgt_desc *bufs, int count)
{
	int i;
	for (i=0; i < count; i++) {
		if ((bufs[i].buf = FUNC1(info->pdev, DMABUFSIZE, &bufs[i].buf_dma_addr)) == NULL)
			return -ENOMEM;
		bufs[i].pbuf  = FUNC0((unsigned int)bufs[i].buf_dma_addr);
	}
	return 0;
}