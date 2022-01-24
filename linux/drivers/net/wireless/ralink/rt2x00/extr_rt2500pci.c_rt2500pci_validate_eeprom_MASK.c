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
struct rt2x00_dev {int /*<<< orphan*/  eeprom; } ;
struct eeprom_93cx6 {scalar_t__ reg_chip_select; scalar_t__ reg_data_clock; scalar_t__ reg_data_out; scalar_t__ reg_data_in; int /*<<< orphan*/  width; int /*<<< orphan*/  register_write; int /*<<< orphan*/  register_read; struct rt2x00_dev* data; } ;

/* Variables and functions */
 int ANTENNA_SW_DIVERSITY ; 
 int /*<<< orphan*/  CSR21 ; 
 int /*<<< orphan*/  CSR21_TYPE_93C46 ; 
 int DEFAULT_RSSI_OFFSET ; 
 int /*<<< orphan*/  EEPROM_ANTENNA ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_DYN_TXAGC ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_HARDWARE_RADIO ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_LED_MODE ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_NUM ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_RF_TYPE ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_RX_DEFAULT ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_TX_DEFAULT ; 
 int /*<<< orphan*/  EEPROM_BASE ; 
 int /*<<< orphan*/  EEPROM_CALIBRATE_OFFSET ; 
 int /*<<< orphan*/  EEPROM_CALIBRATE_OFFSET_RSSI ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_NIC ; 
 int /*<<< orphan*/  EEPROM_NIC_CARDBUS_ACCEL ; 
 int /*<<< orphan*/  EEPROM_NIC_CCK_TX_POWER ; 
 int /*<<< orphan*/  EEPROM_NIC_DYN_BBP_TUNE ; 
 int EEPROM_SIZE ; 
 int LED_MODE_DEFAULT ; 
 int /*<<< orphan*/  PCI_EEPROM_WIDTH_93C46 ; 
 int /*<<< orphan*/  PCI_EEPROM_WIDTH_93C66 ; 
 int RF2522 ; 
 int /*<<< orphan*/  FUNC0 (struct eeprom_93cx6*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rt2500pci_eepromregister_read ; 
 int /*<<< orphan*/  rt2500pci_eepromregister_write ; 
 int /*<<< orphan*/ * FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,char*,int) ; 
 int FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rt2x00_dev *rt2x00dev)
{
	struct eeprom_93cx6 eeprom;
	u32 reg;
	u16 word;
	u8 *mac;

	reg = FUNC8(rt2x00dev, CSR21);

	eeprom.data = rt2x00dev;
	eeprom.register_read = rt2500pci_eepromregister_read;
	eeprom.register_write = rt2500pci_eepromregister_write;
	eeprom.width = FUNC5(reg, CSR21_TYPE_93C46) ?
	    PCI_EEPROM_WIDTH_93C46 : PCI_EEPROM_WIDTH_93C66;
	eeprom.reg_data_in = 0;
	eeprom.reg_data_out = 0;
	eeprom.reg_data_clock = 0;
	eeprom.reg_chip_select = 0;

	FUNC0(&eeprom, EEPROM_BASE, rt2x00dev->eeprom,
			       EEPROM_SIZE / sizeof(u16));

	/*
	 * Start validation of the data that has been read.
	 */
	mac = FUNC1(rt2x00dev, EEPROM_MAC_ADDR_0);
	FUNC7(rt2x00dev, mac);

	word = FUNC3(rt2x00dev, EEPROM_ANTENNA);
	if (word == 0xffff) {
		FUNC6(&word, EEPROM_ANTENNA_NUM, 2);
		FUNC6(&word, EEPROM_ANTENNA_TX_DEFAULT,
				   ANTENNA_SW_DIVERSITY);
		FUNC6(&word, EEPROM_ANTENNA_RX_DEFAULT,
				   ANTENNA_SW_DIVERSITY);
		FUNC6(&word, EEPROM_ANTENNA_LED_MODE,
				   LED_MODE_DEFAULT);
		FUNC6(&word, EEPROM_ANTENNA_DYN_TXAGC, 0);
		FUNC6(&word, EEPROM_ANTENNA_HARDWARE_RADIO, 0);
		FUNC6(&word, EEPROM_ANTENNA_RF_TYPE, RF2522);
		FUNC4(rt2x00dev, EEPROM_ANTENNA, word);
		FUNC2(rt2x00dev, "Antenna: 0x%04x\n", word);
	}

	word = FUNC3(rt2x00dev, EEPROM_NIC);
	if (word == 0xffff) {
		FUNC6(&word, EEPROM_NIC_CARDBUS_ACCEL, 0);
		FUNC6(&word, EEPROM_NIC_DYN_BBP_TUNE, 0);
		FUNC6(&word, EEPROM_NIC_CCK_TX_POWER, 0);
		FUNC4(rt2x00dev, EEPROM_NIC, word);
		FUNC2(rt2x00dev, "NIC: 0x%04x\n", word);
	}

	word = FUNC3(rt2x00dev, EEPROM_CALIBRATE_OFFSET);
	if (word == 0xffff) {
		FUNC6(&word, EEPROM_CALIBRATE_OFFSET_RSSI,
				   DEFAULT_RSSI_OFFSET);
		FUNC4(rt2x00dev, EEPROM_CALIBRATE_OFFSET, word);
		FUNC2(rt2x00dev, "Calibrate offset: 0x%04x\n",
				  word);
	}

	return 0;
}