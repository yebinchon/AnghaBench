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
struct whc_qset {int in_hw_list; int /*<<< orphan*/  qset_dma; TYPE_1__ qh; } ;
struct whc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct whc*,struct whc_qset*) ; 
 int /*<<< orphan*/  FUNC1 (struct whc*,struct whc_qset*,struct whc_qset**,struct whc_qset**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct whc *whc, struct whc_qset *qset)
{
	struct whc_qset *next, *prev;

	FUNC0(whc, qset);

	/* Link into ASL. */
	FUNC1(whc, qset, &next, &prev);
	FUNC2(&qset->qh.link, next->qset_dma);
	FUNC2(&prev->qh.link, qset->qset_dma);
	qset->in_hw_list = true;
}