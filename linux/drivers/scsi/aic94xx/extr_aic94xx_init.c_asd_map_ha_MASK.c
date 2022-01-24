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
typedef  int u16 ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MEMORY ; 
 int FUNC0 (struct asd_ha_struct*) ; 
 int FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct asd_ha_struct *asd_ha)
{
	int err;
	u16 cmd_reg;

	err = FUNC4(asd_ha->pcidev, PCI_COMMAND, &cmd_reg);
	if (err) {
		FUNC2("couldn't read command register of %s\n",
			   FUNC3(asd_ha->pcidev));
		goto Err;
	}

	err = -ENODEV;
	if (cmd_reg & PCI_COMMAND_MEMORY) {
		if ((err = FUNC1(asd_ha)))
			goto Err;
	} else if (cmd_reg & PCI_COMMAND_IO) {
		if ((err = FUNC0(asd_ha)))
			goto Err;
		FUNC2("%s ioport mapped -- upgrade your hardware\n",
			   FUNC3(asd_ha->pcidev));
	} else {
		FUNC2("no proper device access to %s\n",
			   FUNC3(asd_ha->pcidev));
		goto Err;
	}

	return 0;
Err:
	return err;
}