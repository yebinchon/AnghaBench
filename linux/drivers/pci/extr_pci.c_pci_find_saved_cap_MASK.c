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
struct pci_dev {int dummy; } ;
struct pci_cap_saved_state {int dummy; } ;

/* Variables and functions */
 struct pci_cap_saved_state* FUNC0 (struct pci_dev*,char,int) ; 

struct pci_cap_saved_state *FUNC1(struct pci_dev *dev, char cap)
{
	return FUNC0(dev, cap, false);
}