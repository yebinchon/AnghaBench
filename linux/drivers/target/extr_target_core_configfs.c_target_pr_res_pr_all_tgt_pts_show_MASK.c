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
struct se_device {int /*<<< orphan*/  dev_reservation_lock; TYPE_1__* dev_pr_res_holder; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ pr_reg_all_tg_pt; } ;

/* Variables and functions */
 struct se_device* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
		char *page)
{
	struct se_device *dev = FUNC0(item);
	ssize_t len = 0;

	FUNC1(&dev->dev_reservation_lock);
	if (!dev->dev_pr_res_holder) {
		len = FUNC3(page, "No SPC-3 Reservation holder\n");
	} else if (dev->dev_pr_res_holder->pr_reg_all_tg_pt) {
		len = FUNC3(page, "SPC-3 Reservation: All Target"
			" Ports registration\n");
	} else {
		len = FUNC3(page, "SPC-3 Reservation: Single"
			" Target Port registration\n");
	}

	FUNC2(&dev->dev_reservation_lock);
	return len;
}