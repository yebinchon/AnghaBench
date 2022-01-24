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
struct ehci_hcd_mv {int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd_mv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ehci_hcd_mv *ehci_mv)
{
	FUNC1(ehci_mv->phy);
	FUNC0(ehci_mv);
}