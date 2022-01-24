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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_LED_ACT_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_AG_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY ; 
 int EIO ; 
 int /*<<< orphan*/  H2M_BBP_AGENT ; 
 int /*<<< orphan*/  H2M_INT_SRC ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_ENABLE_RX ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  MCU_BOOT_SIGNAL ; 
 int /*<<< orphan*/  MCU_CURRENT ; 
 int /*<<< orphan*/  MCU_LED_ACT_CONF ; 
 int /*<<< orphan*/  MCU_LED_AG_CONF ; 
 int /*<<< orphan*/  MCU_LED_LED_POLARITY ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3071 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_ENABLE_RX_DMA ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_ENABLE_TX_DMA ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct rt2x00_dev*) ; 
 int FUNC9 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC10 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC11 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC12 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;
	u16 word;

	/*
	 * Initialize MAC registers.
	 */
	if (FUNC15(FUNC10(rt2x00dev) ||
		     FUNC3(rt2x00dev)))
		return -EIO;

	/*
	 * Wait BBP/RF to wake up.
	 */
	if (FUNC15(FUNC9(rt2x00dev)))
		return -EIO;

	/*
	 * Send signal during boot time to initialize firmware.
	 */
	FUNC7(rt2x00dev, H2M_BBP_AGENT, 0);
	FUNC7(rt2x00dev, H2M_MAILBOX_CSR, 0);
	if (FUNC11(rt2x00dev))
		FUNC7(rt2x00dev, H2M_INT_SRC, 0);
	FUNC5(rt2x00dev, MCU_BOOT_SIGNAL, 0, 0, 0);
	FUNC0(1);

	/*
	 * Make sure BBP is up and running.
	 */
	if (FUNC15(FUNC8(rt2x00dev)))
		return -EIO;

	/*
	 * Initialize BBP/RF registers.
	 */
	FUNC2(rt2x00dev);
	FUNC4(rt2x00dev);

	if (FUNC11(rt2x00dev) &&
	    (FUNC12(rt2x00dev, RT3070) ||
	     FUNC12(rt2x00dev, RT3071) ||
	     FUNC12(rt2x00dev, RT3572))) {
		FUNC14(200);
		FUNC5(rt2x00dev, MCU_CURRENT, 0, 0, 0);
		FUNC14(10);
	}

	/*
	 * Enable RX.
	 */
	reg = FUNC6(rt2x00dev, MAC_SYS_CTRL);
	FUNC13(&reg, MAC_SYS_CTRL_ENABLE_TX, 1);
	FUNC13(&reg, MAC_SYS_CTRL_ENABLE_RX, 0);
	FUNC7(rt2x00dev, MAC_SYS_CTRL, reg);

	FUNC14(50);

	reg = FUNC6(rt2x00dev, WPDMA_GLO_CFG);
	FUNC13(&reg, WPDMA_GLO_CFG_ENABLE_TX_DMA, 1);
	FUNC13(&reg, WPDMA_GLO_CFG_ENABLE_RX_DMA, 1);
	FUNC13(&reg, WPDMA_GLO_CFG_TX_WRITEBACK_DONE, 1);
	FUNC7(rt2x00dev, WPDMA_GLO_CFG, reg);

	reg = FUNC6(rt2x00dev, MAC_SYS_CTRL);
	FUNC13(&reg, MAC_SYS_CTRL_ENABLE_TX, 1);
	FUNC13(&reg, MAC_SYS_CTRL_ENABLE_RX, 1);
	FUNC7(rt2x00dev, MAC_SYS_CTRL, reg);

	/*
	 * Initialize LED control
	 */
	word = FUNC1(rt2x00dev, EEPROM_LED_AG_CONF);
	FUNC5(rt2x00dev, MCU_LED_AG_CONF, 0xff,
			   word & 0xff, (word >> 8) & 0xff);

	word = FUNC1(rt2x00dev, EEPROM_LED_ACT_CONF);
	FUNC5(rt2x00dev, MCU_LED_ACT_CONF, 0xff,
			   word & 0xff, (word >> 8) & 0xff);

	word = FUNC1(rt2x00dev, EEPROM_LED_POLARITY);
	FUNC5(rt2x00dev, MCU_LED_LED_POLARITY, 0xff,
			   word & 0xff, (word >> 8) & 0xff);

	return 0;
}