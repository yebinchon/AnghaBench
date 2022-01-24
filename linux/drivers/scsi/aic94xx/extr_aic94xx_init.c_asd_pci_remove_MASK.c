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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct asd_ha_struct* FUNC12 (struct pci_dev*) ; 
 scalar_t__ use_msi ; 

__attribute__((used)) static void FUNC13(struct pci_dev *dev)
{
	struct asd_ha_struct *asd_ha = FUNC12(dev);

	if (!asd_ha)
		return;

	FUNC7(asd_ha);

	FUNC2(asd_ha);

	FUNC4(asd_ha);

	/* XXX more here as needed */

	FUNC8(dev->irq, asd_ha);
	if (use_msi)
		FUNC11(asd_ha->pcidev);
	FUNC5(asd_ha);
	FUNC0(asd_ha);
	FUNC3(asd_ha);
	FUNC1(asd_ha);
	FUNC6(asd_ha);
	FUNC9(asd_ha);
	FUNC10(dev);
	return;
}