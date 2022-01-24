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
typedef  int u32 ;
struct keystone_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STATUS ; 
 int DBI_CS2 ; 
 int FUNC0 (struct keystone_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct keystone_pcie*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct keystone_pcie *ks_pcie)
{
	u32 val;

	val = FUNC0(ks_pcie, CMD_STATUS);
	val |= DBI_CS2;
	FUNC1(ks_pcie, CMD_STATUS, val);

	do {
		val = FUNC0(ks_pcie, CMD_STATUS);
	} while (!(val & DBI_CS2));
}