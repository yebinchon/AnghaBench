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
struct hpx_type3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct hpx_type3*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev, struct hpx_type3 *hpx)
{
	if (!hpx)
		return;

	if (!FUNC0(dev))
		return;

	FUNC1(dev, hpx);
}