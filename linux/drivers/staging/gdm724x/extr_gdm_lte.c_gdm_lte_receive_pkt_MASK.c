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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sdu {int /*<<< orphan*/  nic_type; } ;
struct phy_dev {struct net_device** dev; int /*<<< orphan*/  priv_dev; int /*<<< orphan*/  (* get_endian ) (int /*<<< orphan*/ ) ;} ;
struct net_device {int dummy; } ;
struct hci_pdn_table_ind {int /*<<< orphan*/  nic_type; } ;
struct hci_packet {scalar_t__ data; int /*<<< orphan*/  cmd_evt; } ;
struct hci_connect_ind {int /*<<< orphan*/  connect; } ;

/* Variables and functions */
#define  LTE_LINK_ON_OFF_INDICATION 131 
#define  LTE_PDN_TABLE_IND 130 
#define  LTE_RX_MULTI_SDU 129 
#define  LTE_RX_SDU 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct phy_dev *phy_dev, char *buf, int len)
{
	struct hci_packet *hci = (struct hci_packet *)buf;
	struct hci_pdn_table_ind *pdn_table = (struct hci_pdn_table_ind *)buf;
	struct sdu *sdu;
	struct net_device *dev;
	u8 endian = phy_dev->get_endian(phy_dev->priv_dev);
	int ret = 0;
	u16 cmd_evt;
	u32 nic_type;
	int index;

	if (!len)
		return ret;

	cmd_evt = FUNC1(endian, hci->cmd_evt);

	dev = phy_dev->dev[0];
	if (!dev)
		return 0;

	switch (cmd_evt) {
	case LTE_RX_SDU:
		sdu = (struct sdu *)hci->data;
		nic_type = FUNC2(endian, sdu->nic_type);
		index = FUNC0(nic_type);
		if (index < 0)
			return index;
		dev = phy_dev->dev[index];
		FUNC5(dev, hci->data, len, nic_type);
		break;
	case LTE_RX_MULTI_SDU:
		FUNC4(phy_dev, buf, len);
		break;
	case LTE_LINK_ON_OFF_INDICATION:
		FUNC7(dev, "link %s\n",
			    ((struct hci_connect_ind *)buf)->connect
			    ? "on" : "off");
		break;
	case LTE_PDN_TABLE_IND:
		pdn_table = (struct hci_pdn_table_ind *)buf;
		nic_type = FUNC2(endian, pdn_table->nic_type);
		index = FUNC0(nic_type);
		if (index < 0)
			return index;
		dev = phy_dev->dev[index];
		FUNC6(dev, buf, len);
		/* Fall through */
	default:
		ret = FUNC3(dev, buf, len);
		break;
	}

	return ret;
}