#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {TYPE_1__* pcidev; scalar_t__ io_addr; } ;
typedef  TYPE_2__ ips_ha_t ;
struct TYPE_4__ {scalar_t__ revision; } ;

/* Variables and functions */
 scalar_t__ IPS_REG_FLAP ; 
 scalar_t__ IPS_REG_FLDP ; 
 scalar_t__ IPS_REVID_TROMBONE64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(ips_ha_t * ha, char *buffer, uint32_t buffersize,
		 uint32_t offset)
{
	int i;
	int timeout;
	uint8_t status = 0;

	FUNC1("ips_program_bios", 1);

	status = 0;

	for (i = 0; i < buffersize; i++) {
		/* write a byte */
		FUNC4(i + offset, ha->io_addr + IPS_REG_FLAP);
		if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
			FUNC5(25);	/* 25 us */

		FUNC3(0x40, ha->io_addr + IPS_REG_FLDP);
		if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
			FUNC5(25);	/* 25 us */

		FUNC3(buffer[i], ha->io_addr + IPS_REG_FLDP);
		if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
			FUNC5(25);	/* 25 us */

		/* wait up to one second */
		timeout = 1000;
		while (timeout > 0) {
			if (ha->pcidev->revision == IPS_REVID_TROMBONE64) {
				FUNC4(0, ha->io_addr + IPS_REG_FLAP);
				FUNC5(25);	/* 25 us */
			}

			status = FUNC2(ha->io_addr + IPS_REG_FLDP);

			if (status & 0x80)
				break;

			FUNC0(1);
			timeout--;
		}

		if (timeout == 0) {
			/* timeout error */
			FUNC4(0, ha->io_addr + IPS_REG_FLAP);
			if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
				FUNC5(25);	/* 25 us */

			FUNC3(0xFF, ha->io_addr + IPS_REG_FLDP);
			if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
				FUNC5(25);	/* 25 us */

			return (1);
		}

		/* check the status */
		if (status & 0x18) {
			/* programming error */
			FUNC4(0, ha->io_addr + IPS_REG_FLAP);
			if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
				FUNC5(25);	/* 25 us */

			FUNC3(0xFF, ha->io_addr + IPS_REG_FLDP);
			if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
				FUNC5(25);	/* 25 us */

			return (1);
		}
	}			/* end for */

	/* Enable reading */
	FUNC4(0, ha->io_addr + IPS_REG_FLAP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	FUNC3(0xFF, ha->io_addr + IPS_REG_FLDP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	return (0);
}