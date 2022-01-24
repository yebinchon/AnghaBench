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
typedef  int /*<<< orphan*/  u8 ;
struct mt7601u_dev {scalar_t__ macaddr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_MAC_ADDR_DW0 ; 
 int /*<<< orphan*/  MT_MAC_ADDR_DW1 ; 
 int /*<<< orphan*/  MT_MAC_ADDR_DW1_U2ME_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct mt7601u_dev *dev, const u8 *addr)
{
	FUNC3(dev->macaddr, addr);

	if (!FUNC6(dev->macaddr)) {
		FUNC2(dev->macaddr);
		FUNC1(dev->dev,
			 "Invalid MAC address, using random address %pM\n",
			 dev->macaddr);
	}

	FUNC7(dev, MT_MAC_ADDR_DW0, FUNC5(dev->macaddr));
	FUNC7(dev, MT_MAC_ADDR_DW1, FUNC4(dev->macaddr + 4) |
		FUNC0(MT_MAC_ADDR_DW1_U2ME_MASK, 0xff));
}