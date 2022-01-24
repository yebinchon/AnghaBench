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
struct TYPE_5__ {scalar_t__ mem_ptr; TYPE_1__* pcidev; } ;
typedef  TYPE_2__ ips_ha_t ;
struct TYPE_4__ {scalar_t__ revision; } ;

/* Variables and functions */
 scalar_t__ IPS_REG_FLAP ; 
 scalar_t__ IPS_REG_FLDP ; 
 scalar_t__ IPS_REVID_TROMBONE64 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(ips_ha_t * ha, char *buffer, uint32_t buffersize,
		      uint32_t offset)
{
	uint8_t checksum;
	int i;

	FUNC0("ips_verify_bios_memio", 1);

	/* test 1st byte */
	FUNC3(0, ha->mem_ptr + IPS_REG_FLAP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC2(25);	/* 25 us */

	if (FUNC1(ha->mem_ptr + IPS_REG_FLDP) != 0x55)
		return (1);

	FUNC3(1, ha->mem_ptr + IPS_REG_FLAP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC2(25);	/* 25 us */
	if (FUNC1(ha->mem_ptr + IPS_REG_FLDP) != 0xAA)
		return (1);

	checksum = 0xff;
	for (i = 2; i < buffersize; i++) {

		FUNC3(i + offset, ha->mem_ptr + IPS_REG_FLAP);
		if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
			FUNC2(25);	/* 25 us */

		checksum =
		    (uint8_t) checksum + FUNC1(ha->mem_ptr + IPS_REG_FLDP);
	}

	if (checksum != 0)
		/* failure */
		return (1);
	else
		/* success */
		return (0);
}