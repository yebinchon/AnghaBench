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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ mem_ptr; } ;
typedef  TYPE_1__ ips_ha_t ;

/* Variables and functions */
 scalar_t__ IPS_REG_I960_OIMR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(ips_ha_t * ha)
{
	uint32_t Oimr;

	FUNC0("ips_enable_int_morpheus", 1);

	Oimr = FUNC1(ha->mem_ptr + IPS_REG_I960_OIMR);
	Oimr &= ~0x08;
	FUNC2(Oimr, ha->mem_ptr + IPS_REG_I960_OIMR);
	FUNC1(ha->mem_ptr + IPS_REG_I960_OIMR);	/*Ensure PCI Posting Completes*/
}