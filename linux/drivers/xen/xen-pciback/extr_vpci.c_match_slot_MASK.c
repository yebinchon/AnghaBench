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
struct pci_dev {scalar_t__ bus; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(struct pci_dev *l, struct pci_dev *r)
{
	if (FUNC1(l->bus) == FUNC1(r->bus)
	    && l->bus == r->bus && FUNC0(l->devfn) == FUNC0(r->devfn))
		return 1;

	return 0;
}