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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANAPAR_FOR_8192PciE ; 
 int BIT4 ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter1 ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter4 ; 
 int /*<<< orphan*/  rFPGA0_XA_RFInterfaceOE ; 
 int /*<<< orphan*/  rOFDM0_TRxPathEnable ; 
 int /*<<< orphan*/  rOFDM1_TRxPathEnable ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct net_device *dev)
{

	FUNC0(dev, rFPGA0_XA_RFInterfaceOE, BIT4, 0x0);
	FUNC0(dev, rFPGA0_AnalogParameter4, 0x300, 0x0);
	FUNC0(dev, rFPGA0_AnalogParameter1, 0x18, 0x0);
	FUNC0(dev, rOFDM0_TRxPathEnable, 0xf, 0x0);
	FUNC0(dev, rOFDM1_TRxPathEnable, 0xf, 0x0);
	FUNC0(dev, rFPGA0_AnalogParameter1, 0x60, 0x0);
	FUNC0(dev, rFPGA0_AnalogParameter1, 0x4, 0x0);
	FUNC1(dev, ANAPAR_FOR_8192PciE, 0x07);

}