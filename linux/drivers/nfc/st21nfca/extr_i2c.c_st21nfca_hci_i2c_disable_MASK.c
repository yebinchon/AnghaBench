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
struct st21nfca_i2c_phy {scalar_t__ powered; int /*<<< orphan*/  gpiod_ena; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *phy_id)
{
	struct st21nfca_i2c_phy *phy = phy_id;

	FUNC0(phy->gpiod_ena, 0);

	phy->powered = 0;
}