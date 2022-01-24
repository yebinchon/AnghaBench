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
struct vfio_iova {int /*<<< orphan*/  list; void* end; void* start; } ;
struct list_head {int dummy; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vfio_iova* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC3(struct list_head *head,
				  dma_addr_t start, dma_addr_t end)
{
	struct vfio_iova *region;

	region = FUNC1(sizeof(*region), GFP_KERNEL);
	if (!region)
		return -ENOMEM;

	FUNC0(&region->list);
	region->start = start;
	region->end = end;

	FUNC2(&region->list, head);
	return 0;
}