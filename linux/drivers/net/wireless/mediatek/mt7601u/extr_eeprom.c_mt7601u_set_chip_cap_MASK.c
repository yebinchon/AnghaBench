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
typedef  int u16 ;
struct mt7601u_dev {int /*<<< orphan*/  dev; TYPE_1__* ee; } ;
struct TYPE_2__ {int tssi_enabled; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MT_EE_NIC_CONF_0 ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_0_RX_PATH ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_0_TX_PATH ; 
 int MT_EE_NIC_CONF_1 ; 
 int MT_EE_NIC_CONF_1_HW_RF_CTRL ; 
 int MT_EE_NIC_CONF_1_TEMP_TX_ALC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct mt7601u_dev *dev, u8 *eeprom)
{
	u16 nic_conf0 = FUNC3(eeprom + MT_EE_NIC_CONF_0);
	u16 nic_conf1 = FUNC3(eeprom + MT_EE_NIC_CONF_1);

	if (!FUNC2(nic_conf1 & 0xff))
		nic_conf1 &= 0xff00;

	dev->ee->tssi_enabled = FUNC4(dev, eeprom) &&
				!(nic_conf1 & MT_EE_NIC_CONF_1_TEMP_TX_ALC);

	if (nic_conf1 & MT_EE_NIC_CONF_1_HW_RF_CTRL)
		FUNC1(dev->dev,
			"Error: this driver does not support HW RF ctrl\n");

	if (!FUNC2(nic_conf0 >> 8))
		return;

	if (FUNC0(MT_EE_NIC_CONF_0_RX_PATH, nic_conf0) > 1 ||
	    FUNC0(MT_EE_NIC_CONF_0_TX_PATH, nic_conf0) > 1)
		FUNC1(dev->dev,
			"Error: device has more than 1 RX/TX stream!\n");
}