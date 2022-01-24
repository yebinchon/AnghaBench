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
struct list_head {int dummy; } ;
struct cw1200_queue_item {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct cw1200_queue_item* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_queue_item*,struct cw1200_queue_item*,int) ; 

__attribute__((used)) static void FUNC4(struct list_head *gc_list,
					  struct cw1200_queue_item *item)
{
	struct cw1200_queue_item *gc_item;
	gc_item = FUNC1(sizeof(struct cw1200_queue_item),
			GFP_ATOMIC);
	FUNC0(!gc_item);
	FUNC3(gc_item, item, sizeof(struct cw1200_queue_item));
	FUNC2(&gc_item->head, gc_list);
}