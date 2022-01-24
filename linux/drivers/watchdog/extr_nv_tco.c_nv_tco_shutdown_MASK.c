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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCP51_SMBUS_SETUP_B ; 
 int /*<<< orphan*/  MCP51_SMBUS_SETUP_B_TCO_REBOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tco_pci ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct platform_device *dev)
{
	u32 val;

	FUNC2();

	/* Some BIOSes fail the POST (once) if the NO_REBOOT flag is not
	 * unset during shutdown. */
	FUNC0(tco_pci, MCP51_SMBUS_SETUP_B, &val);
	val &= ~MCP51_SMBUS_SETUP_B_TCO_REBOOT;
	FUNC1(tco_pci, MCP51_SMBUS_SETUP_B, val);
}