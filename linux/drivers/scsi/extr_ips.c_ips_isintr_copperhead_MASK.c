#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {scalar_t__ io_addr; } ;
typedef  TYPE_1__ ips_ha_t ;

/* Variables and functions */
 int IPS_BIT_GHI ; 
 int IPS_BIT_SCE ; 
 int IPS_BIT_SQO ; 
 scalar_t__ IPS_REG_HISR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(ips_ha_t * ha)
{
	uint8_t Isr;

	FUNC0("ips_isintr_copperhead", 2);

	Isr = FUNC1(ha->io_addr + IPS_REG_HISR);

	if (Isr == 0xFF)
		/* ?!?! Nothing really there */
		return (0);

	if (Isr & IPS_BIT_SCE)
		return (1);
	else if (Isr & (IPS_BIT_SQO | IPS_BIT_GHI)) {
		/* status queue overflow or GHI */
		/* just clear the interrupt */
		FUNC2(Isr, ha->io_addr + IPS_REG_HISR);
	}

	return (0);
}