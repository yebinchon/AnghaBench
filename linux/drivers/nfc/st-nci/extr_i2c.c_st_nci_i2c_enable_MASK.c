#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_nci_i2c_phy {int irq_active; TYPE_1__* i2c_dev; TYPE_2__* ndlc; int /*<<< orphan*/  gpiod_reset; } ;
struct TYPE_4__ {scalar_t__ powered; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(void *phy_id)
{
	struct st_nci_i2c_phy *phy = phy_id;

	FUNC1(phy->gpiod_reset, 0);
	FUNC2(10000, 15000);
	FUNC1(phy->gpiod_reset, 1);
	FUNC2(80000, 85000);

	if (phy->ndlc->powered == 0 && phy->irq_active == 0) {
		FUNC0(phy->i2c_dev->irq);
		phy->irq_active = true;
	}

	return 0;
}