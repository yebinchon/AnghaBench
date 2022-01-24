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
struct t10_pr_registration {int /*<<< orphan*/  pr_res_type; } ;
struct se_device {int /*<<< orphan*/  dev_reservation_lock; struct t10_pr_registration* dev_pr_res_holder; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct se_device* FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item, char *page)
{
	struct se_device *dev = FUNC1(item);
	struct t10_pr_registration *pr_reg;
	ssize_t len = 0;

	FUNC2(&dev->dev_reservation_lock);
	pr_reg = dev->dev_pr_res_holder;
	if (pr_reg) {
		len = FUNC4(page, "SPC-3 Reservation Type: %s\n",
			FUNC0(pr_reg->pr_res_type));
	} else {
		len = FUNC4(page, "No SPC-3 Reservation holder\n");
	}

	FUNC3(&dev->dev_reservation_lock);
	return len;
}