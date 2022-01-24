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
struct tusb1210 {scalar_t__ vendor_specific2; int /*<<< orphan*/  ulpi; int /*<<< orphan*/  gpio_cs; int /*<<< orphan*/  gpio_reset; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUSB1210_VENDOR_SPECIFIC2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct tusb1210* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct tusb1210 *tusb = FUNC1(phy);

	FUNC0(tusb->gpio_reset, 1);
	FUNC0(tusb->gpio_cs, 1);

	/* Restore the optional eye diagram optimization value */
	if (tusb->vendor_specific2)
		FUNC2(tusb->ulpi, TUSB1210_VENDOR_SPECIFIC2,
			   tusb->vendor_specific2);

	return 0;
}