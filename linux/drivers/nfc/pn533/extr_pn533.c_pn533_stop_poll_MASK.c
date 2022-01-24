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
struct pn533 {int /*<<< orphan*/  poll_work; TYPE_1__* phy_ops; int /*<<< orphan*/  dev; int /*<<< orphan*/  poll_mod_count; int /*<<< orphan*/  listen_timer; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* abort_cmd ) (struct pn533*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pn533* FUNC3 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pn533*) ; 
 int /*<<< orphan*/  FUNC5 (struct pn533*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nfc_dev *nfc_dev)
{
	struct pn533 *dev = FUNC3(nfc_dev);

	FUNC0(&dev->listen_timer);

	if (!dev->poll_mod_count) {
		FUNC1(dev->dev,
			"Polling operation was not running\n");
		return;
	}

	dev->phy_ops->abort_cmd(dev, GFP_KERNEL);
	FUNC2(&dev->poll_work);
	FUNC4(dev);
}