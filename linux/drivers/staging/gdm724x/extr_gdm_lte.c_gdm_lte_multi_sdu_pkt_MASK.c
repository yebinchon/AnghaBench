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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sdu {scalar_t__ data; int /*<<< orphan*/  nic_type; int /*<<< orphan*/  len; int /*<<< orphan*/  cmd_evt; } ;
struct phy_dev {struct net_device** dev; int /*<<< orphan*/  priv_dev; int /*<<< orphan*/  (* get_endian ) (int /*<<< orphan*/ ) ;} ;
struct net_device {int dummy; } ;
struct multi_sdu {int /*<<< orphan*/  num_packet; int /*<<< orphan*/  len; scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ HCI_HEADER_SIZE ; 
 scalar_t__ LTE_RX_SDU ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct phy_dev *phy_dev, char *buf, int len)
{
	struct net_device *dev;
	struct multi_sdu *multi_sdu = (struct multi_sdu *)buf;
	struct sdu *sdu = NULL;
	u8 endian = phy_dev->get_endian(phy_dev->priv_dev);
	u8 *data = (u8 *)multi_sdu->data;
	u16 i = 0;
	u16 num_packet;
	u16 hci_len;
	u16 cmd_evt;
	u32 nic_type;
	int index;

	hci_len = FUNC1(endian, multi_sdu->len);
	num_packet = FUNC1(endian, multi_sdu->num_packet);

	for (i = 0; i < num_packet; i++) {
		sdu = (struct sdu *)data;

		cmd_evt  = FUNC1(endian, sdu->cmd_evt);
		hci_len  = FUNC1(endian, sdu->len);
		nic_type = FUNC2(endian, sdu->nic_type);

		if (cmd_evt != LTE_RX_SDU) {
			FUNC4("rx sdu wrong hci %04x\n", cmd_evt);
			return;
		}
		if (hci_len < 12) {
			FUNC4("rx sdu invalid len %d\n", hci_len);
			return;
		}

		index = FUNC0(nic_type);
		if (index < 0) {
			FUNC4("rx sdu invalid nic_type :%x\n", nic_type);
			return;
		}
		dev = phy_dev->dev[index];
		FUNC3(dev, (char *)sdu->data,
				 (int)(hci_len - 12), nic_type);

		data += ((hci_len + 3) & 0xfffc) + HCI_HEADER_SIZE;
	}
}