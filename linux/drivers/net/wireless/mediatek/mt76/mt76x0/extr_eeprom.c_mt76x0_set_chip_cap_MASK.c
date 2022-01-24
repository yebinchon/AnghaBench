#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {int has_2ghz; int has_5ghz; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ cap; } ;
struct mt76x02_dev {TYPE_2__ mt76; scalar_t__ no_2ghz; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_0 ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_0_RX_PATH ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_0_TX_PATH ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_1 ; 
 int MT_EE_NIC_CONF_1_HW_RF_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct mt76x02_dev*) ; 
 int FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct mt76x02_dev *dev)
{
	u16 nic_conf0 = FUNC4(dev, MT_EE_NIC_CONF_0);
	u16 nic_conf1 = FUNC4(dev, MT_EE_NIC_CONF_1);

	FUNC5(dev);
	FUNC1(dev->mt76.dev, "2GHz %d 5GHz %d\n",
		dev->mt76.cap.has_2ghz, dev->mt76.cap.has_5ghz);

	if (dev->no_2ghz) {
		dev->mt76.cap.has_2ghz = false;
		FUNC1(dev->mt76.dev, "mask out 2GHz support\n");
	}

	if (FUNC3(dev)) {
		dev->mt76.cap.has_5ghz = false;
		FUNC1(dev->mt76.dev, "mask out 5GHz support\n");
	}

	if (!FUNC6(nic_conf1 & 0xff))
		nic_conf1 &= 0xff00;

	if (nic_conf1 & MT_EE_NIC_CONF_1_HW_RF_CTRL)
		FUNC2(dev->mt76.dev,
			"driver does not support HW RF ctrl\n");

	if (!FUNC6(nic_conf0 >> 8))
		return;

	if (FUNC0(MT_EE_NIC_CONF_0_RX_PATH, nic_conf0) > 1 ||
	    FUNC0(MT_EE_NIC_CONF_0_TX_PATH, nic_conf0) > 1)
		FUNC2(dev->mt76.dev, "invalid tx-rx stream\n");
}