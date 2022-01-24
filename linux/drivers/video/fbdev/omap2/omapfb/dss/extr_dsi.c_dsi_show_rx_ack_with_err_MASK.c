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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(u16 err)
{
	FUNC0("\tACK with ERROR (%#x):\n", err);
	if (err & (1 << 0))
		FUNC0("\t\tSoT Error\n");
	if (err & (1 << 1))
		FUNC0("\t\tSoT Sync Error\n");
	if (err & (1 << 2))
		FUNC0("\t\tEoT Sync Error\n");
	if (err & (1 << 3))
		FUNC0("\t\tEscape Mode Entry Command Error\n");
	if (err & (1 << 4))
		FUNC0("\t\tLP Transmit Sync Error\n");
	if (err & (1 << 5))
		FUNC0("\t\tHS Receive Timeout Error\n");
	if (err & (1 << 6))
		FUNC0("\t\tFalse Control Error\n");
	if (err & (1 << 7))
		FUNC0("\t\t(reserved7)\n");
	if (err & (1 << 8))
		FUNC0("\t\tECC Error, single-bit (corrected)\n");
	if (err & (1 << 9))
		FUNC0("\t\tECC Error, multi-bit (not corrected)\n");
	if (err & (1 << 10))
		FUNC0("\t\tChecksum Error\n");
	if (err & (1 << 11))
		FUNC0("\t\tData type not recognized\n");
	if (err & (1 << 12))
		FUNC0("\t\tInvalid VC ID\n");
	if (err & (1 << 13))
		FUNC0("\t\tInvalid Transmission Length\n");
	if (err & (1 << 14))
		FUNC0("\t\t(reserved14)\n");
	if (err & (1 << 15))
		FUNC0("\t\tDSI Protocol Violation\n");
}