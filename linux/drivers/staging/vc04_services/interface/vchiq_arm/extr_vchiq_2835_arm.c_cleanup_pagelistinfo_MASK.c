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
struct vchiq_pagelist_info {unsigned int num_pages; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  pagelist; int /*<<< orphan*/  pagelist_buffer_size; int /*<<< orphan*/ * pages; scalar_t__ pages_need_release; int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  scatterlist; scalar_t__ scatterlist_mapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_dev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vchiq_pagelist_info *pagelistinfo)
{
	if (pagelistinfo->scatterlist_mapped) {
		FUNC1(g_dev, pagelistinfo->scatterlist,
			     pagelistinfo->num_pages, pagelistinfo->dma_dir);
	}

	if (pagelistinfo->pages_need_release) {
		unsigned int i;

		for (i = 0; i < pagelistinfo->num_pages; i++)
			FUNC2(pagelistinfo->pages[i]);
	}

	FUNC0(g_dev, pagelistinfo->pagelist_buffer_size,
			  pagelistinfo->pagelist, pagelistinfo->dma_addr);
}