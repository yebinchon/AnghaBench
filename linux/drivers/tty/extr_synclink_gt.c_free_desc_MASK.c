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
struct slgt_info {int /*<<< orphan*/ * tbufs; int /*<<< orphan*/ * rbufs; int /*<<< orphan*/ * bufs; int /*<<< orphan*/  bufs_dma_addr; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_LIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct slgt_info *info)
{
	if (info->bufs != NULL) {
		FUNC0(info->pdev, DESC_LIST_SIZE, info->bufs, info->bufs_dma_addr);
		info->bufs  = NULL;
		info->rbufs = NULL;
		info->tbufs = NULL;
	}
}