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
struct ehci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PSE ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ehci_hcd *ehci)
{
	FUNC0(ehci, CMD_PSE);
}