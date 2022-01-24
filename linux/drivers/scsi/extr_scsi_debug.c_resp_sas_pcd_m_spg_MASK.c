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
typedef  int /*<<< orphan*/  sas_pcd_m_pg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ naa3_comp_a ; 
 scalar_t__ naa3_comp_c ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned char*) ; 

__attribute__((used)) static int FUNC4(unsigned char *p, int pcontrol, int target,
			      int target_dev_id)
{	/* SAS phy control and discover mode page for mode_sense */
	unsigned char sas_pcd_m_pg[] = {0x59, 0x1, 0, 0x64, 0, 0x6, 0, 2,
		    0, 0, 0, 0, 0x10, 0x9, 0x8, 0x0,
		    0, 0, 0, 0, 0, 0, 0, 0,	/* insert SAS addr */
		    0, 0, 0, 0, 0, 0, 0, 0,	/* insert SAS addr */
		    0x2, 0, 0, 0, 0, 0, 0, 0,
		    0x88, 0x99, 0, 0, 0, 0, 0, 0,
		    0, 0, 0, 0, 0, 0, 0, 0,
		    0, 1, 0, 0, 0x10, 0x9, 0x8, 0x0,
		    0, 0, 0, 0, 0, 0, 0, 0,	/* insert SAS addr */
		    0, 0, 0, 0, 0, 0, 0, 0,	/* insert SAS addr */
		    0x3, 0, 0, 0, 0, 0, 0, 0,
		    0x88, 0x99, 0, 0, 0, 0, 0, 0,
		    0, 0, 0, 0, 0, 0, 0, 0,
		};
	int port_a, port_b;

	FUNC3(naa3_comp_a, sas_pcd_m_pg + 16);
	FUNC3(naa3_comp_c + 1, sas_pcd_m_pg + 24);
	FUNC3(naa3_comp_a, sas_pcd_m_pg + 64);
	FUNC3(naa3_comp_c + 1, sas_pcd_m_pg + 72);
	port_a = target_dev_id + 1;
	port_b = port_a + 1;
	FUNC0(p, sas_pcd_m_pg, sizeof(sas_pcd_m_pg));
	FUNC2(port_a, p + 20);
	FUNC2(port_b, p + 48 + 20);
	if (1 == pcontrol)
		FUNC1(p + 4, 0, sizeof(sas_pcd_m_pg) - 4);
	return sizeof(sas_pcd_m_pg);
}