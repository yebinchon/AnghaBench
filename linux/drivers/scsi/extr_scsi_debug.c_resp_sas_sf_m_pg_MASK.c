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
typedef  int /*<<< orphan*/  sas_sf_m_pg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(unsigned char *p, int pcontrol, int target)
{	/* SAS SSP mode page - short format for mode_sense */
	unsigned char sas_sf_m_pg[] = {0x19, 0x6,
		0x6, 0x0, 0x7, 0xd0, 0x0, 0x0};

	FUNC0(p, sas_sf_m_pg, sizeof(sas_sf_m_pg));
	if (1 == pcontrol)
		FUNC1(p + 2, 0, sizeof(sas_sf_m_pg) - 2);
	return sizeof(sas_sf_m_pg);
}