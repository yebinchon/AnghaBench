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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ahd_dev_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC4(ahd_dev_softc_t pci, int reg, uint32_t value, int width)
{
	switch (width) {
	case 1:
		FUNC1(pci, reg, value);
		break;
	case 2:
		FUNC3(pci, reg, value);
		break;
	case 4:
		FUNC2(pci, reg, value);
		break;
	default:
		FUNC0("ahd_pci_write_config: Write size too big");
		/* NOTREACHED */
	}
}