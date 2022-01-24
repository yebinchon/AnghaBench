#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rt2x00_dev {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,char*,int /*<<< orphan*/ *) ; 

void FUNC6(struct rt2x00_dev *rt2x00dev, u8 *eeprom_mac_addr)
{
	const char *mac_addr;

	mac_addr = FUNC4(rt2x00dev->dev->of_node);
	if (!FUNC0(mac_addr))
		FUNC2(eeprom_mac_addr, mac_addr);

	if (!FUNC3(eeprom_mac_addr)) {
		FUNC1(eeprom_mac_addr);
		FUNC5(rt2x00dev, "MAC: %pM\n", eeprom_mac_addr);
	}
}