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
struct ntb_dev {int /*<<< orphan*/  dev; } ;
struct msi_desc {int /*<<< orphan*/ * write_msi_msg_data; int /*<<< orphan*/ * write_msi_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msi_desc*) ; 
 struct msi_desc* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  ntbm_msi_callback_match ; 
 int /*<<< orphan*/  ntbm_msi_callback_release ; 

void FUNC4(struct ntb_dev *ntb, unsigned int irq, void *dev_id)
{
	struct msi_desc *entry = FUNC3(irq);

	entry->write_msi_msg = NULL;
	entry->write_msi_msg_data = NULL;

	FUNC0(FUNC2(&ntb->dev, ntbm_msi_callback_release,
			       ntbm_msi_callback_match, entry));

	FUNC1(&ntb->dev, irq, dev_id);
}