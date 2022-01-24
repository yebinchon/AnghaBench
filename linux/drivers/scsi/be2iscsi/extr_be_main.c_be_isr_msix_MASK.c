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
struct beiscsi_hba {int dummy; } ;
struct be_queue_info {int /*<<< orphan*/  id; } ;
struct be_eq_obj {int /*<<< orphan*/  iopoll; struct beiscsi_hba* phba; struct be_queue_info q; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct beiscsi_hba *phba;
	struct be_queue_info *eq;
	struct be_eq_obj *pbe_eq;

	pbe_eq = dev_id;
	eq = &pbe_eq->q;

	phba = pbe_eq->phba;
	/* disable interrupt till iopoll completes */
	FUNC0(phba, eq->id, 1,	0, 0, 1);
	FUNC1(&pbe_eq->iopoll);

	return IRQ_HANDLED;
}