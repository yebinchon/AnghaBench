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
struct rt2x00_dev {int /*<<< orphan*/  intf_ap_count; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MONITORING ; 
 unsigned int const FIF_ALLMULTI ; 
 unsigned int const FIF_CONTROL ; 
 unsigned int const FIF_FCSFAIL ; 
 unsigned int const FIF_PLCPFAIL ; 
 unsigned int const FIF_PSPOLL ; 
 int /*<<< orphan*/  TXRX_CSR0 ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_ACK_CTS ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_BROADCAST ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_CONTROL ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_CRC ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_MULTICAST ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_NOT_TO_ME ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_PHYSICAL ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_TO_DS ; 
 int /*<<< orphan*/  TXRX_CSR0_DROP_VERSION_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
				  const unsigned int filter_flags)
{
	u32 reg;

	/*
	 * Start configuration steps.
	 * Note that the version error will always be dropped
	 * and broadcast frames will always be accepted since
	 * there is no filter for it at this time.
	 */
	reg = FUNC1(rt2x00dev, TXRX_CSR0);
	FUNC0(&reg, TXRX_CSR0_DROP_CRC,
			   !(filter_flags & FIF_FCSFAIL));
	FUNC0(&reg, TXRX_CSR0_DROP_PHYSICAL,
			   !(filter_flags & FIF_PLCPFAIL));
	FUNC0(&reg, TXRX_CSR0_DROP_CONTROL,
			   !(filter_flags & (FIF_CONTROL | FIF_PSPOLL)));
	FUNC0(&reg, TXRX_CSR0_DROP_NOT_TO_ME,
			   !FUNC3(CONFIG_MONITORING, &rt2x00dev->flags));
	FUNC0(&reg, TXRX_CSR0_DROP_TO_DS,
			   !FUNC3(CONFIG_MONITORING, &rt2x00dev->flags) &&
			   !rt2x00dev->intf_ap_count);
	FUNC0(&reg, TXRX_CSR0_DROP_VERSION_ERROR, 1);
	FUNC0(&reg, TXRX_CSR0_DROP_MULTICAST,
			   !(filter_flags & FIF_ALLMULTI));
	FUNC0(&reg, TXRX_CSR0_DROP_BROADCAST, 0);
	FUNC0(&reg, TXRX_CSR0_DROP_ACK_CTS,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(rt2x00dev, TXRX_CSR0, reg);
}