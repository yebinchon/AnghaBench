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
struct st21nfca_i2c_phy {int powered; int /*<<< orphan*/  run_mode; int /*<<< orphan*/  gpiod_ena; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_HCI_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(void *phy_id)
{
	struct st21nfca_i2c_phy *phy = phy_id;

	FUNC0(phy->gpiod_ena, 1);
	phy->powered = 1;
	phy->run_mode = ST21NFCA_HCI_MODE;

	FUNC1(10000, 15000);

	return 0;
}