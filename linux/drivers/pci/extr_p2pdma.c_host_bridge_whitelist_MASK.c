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
struct pci_host_bridge {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int FUNC0 (struct pci_host_bridge*,int) ; 
 struct pci_host_bridge* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct pci_dev *a, struct pci_dev *b)
{
	struct pci_host_bridge *host_a = FUNC1(a->bus);
	struct pci_host_bridge *host_b = FUNC1(b->bus);

	if (host_a == host_b)
		return FUNC0(host_a, true);

	if (FUNC0(host_a, false) &&
	    FUNC0(host_b, false))
		return true;

	return false;
}