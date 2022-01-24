#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct whc_qset {int in_sw_list; int in_hw_list; int /*<<< orphan*/  qset_dma; TYPE_1__ qh; int /*<<< orphan*/  list_node; } ;
struct whc {int /*<<< orphan*/  async_list; int /*<<< orphan*/  async_removed_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct whc*,struct whc_qset*,struct whc_qset**,struct whc_qset**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct whc *whc, struct whc_qset *qset)
{
	struct whc_qset *prev, *next;

	FUNC2(whc, qset, &next, &prev);

	FUNC1(&qset->list_node, &whc->async_removed_list);
	qset->in_sw_list = false;

	/*
	 * No more qsets in the ASL?  The caller must stop the ASL as
	 * it's no longer valid.
	 */
	if (FUNC0(&whc->async_list))
		return;

	/* Remove from ASL. */
	FUNC3(&prev->qh.link, next->qset_dma);
	qset->in_hw_list = false;
}