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
struct hisi_sas_cq {int id; int /*<<< orphan*/  tasklet; struct hisi_hba* hisi_hba; } ;
struct hisi_hba {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OQ_INT_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq_no, void *p)
{
	struct hisi_sas_cq *cq = p;
	struct hisi_hba *hisi_hba = cq->hisi_hba;
	int queue = cq->id;

	FUNC0(hisi_hba, OQ_INT_SRC, 1 << queue);

	FUNC1(&cq->tasklet);

	return IRQ_HANDLED;
}