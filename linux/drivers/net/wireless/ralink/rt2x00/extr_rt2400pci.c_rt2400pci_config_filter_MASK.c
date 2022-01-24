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
 unsigned int const FIF_CONTROL ; 
 unsigned int const FIF_FCSFAIL ; 
 unsigned int const FIF_PLCPFAIL ; 
 int /*<<< orphan*/  RXCSR0 ; 
 int /*<<< orphan*/  RXCSR0_DROP_CONTROL ; 
 int /*<<< orphan*/  RXCSR0_DROP_CRC ; 
 int /*<<< orphan*/  RXCSR0_DROP_NOT_TO_ME ; 
 int /*<<< orphan*/  RXCSR0_DROP_PHYSICAL ; 
 int /*<<< orphan*/  RXCSR0_DROP_TODS ; 
 int /*<<< orphan*/  RXCSR0_DROP_VERSION_ERROR ; 
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
	 * since there is no filter for it at this time.
	 */
	reg = FUNC1(rt2x00dev, RXCSR0);
	FUNC0(&reg, RXCSR0_DROP_CRC,
			   !(filter_flags & FIF_FCSFAIL));
	FUNC0(&reg, RXCSR0_DROP_PHYSICAL,
			   !(filter_flags & FIF_PLCPFAIL));
	FUNC0(&reg, RXCSR0_DROP_CONTROL,
			   !(filter_flags & FIF_CONTROL));
	FUNC0(&reg, RXCSR0_DROP_NOT_TO_ME,
			   !FUNC3(CONFIG_MONITORING, &rt2x00dev->flags));
	FUNC0(&reg, RXCSR0_DROP_TODS,
			   !FUNC3(CONFIG_MONITORING, &rt2x00dev->flags) &&
			   !rt2x00dev->intf_ap_count);
	FUNC0(&reg, RXCSR0_DROP_VERSION_ERROR, 1);
	FUNC2(rt2x00dev, RXCSR0, reg);
}