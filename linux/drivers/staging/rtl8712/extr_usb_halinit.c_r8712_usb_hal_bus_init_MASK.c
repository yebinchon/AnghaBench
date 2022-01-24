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
typedef  int u8 ;
struct registry_priv {scalar_t__ chip_version; } ;
struct _adapter {struct registry_priv registrypriv; } ;

/* Variables and functions */
 int AFE_MISC ; 
 int AFE_MISC_BGEN ; 
 int AFE_MISC_I32_EN ; 
 int AFE_MISC_MBEN ; 
 int AFE_PLL_CTRL ; 
 int AFE_XTAL_CTRL ; 
 int FUNC0 (int) ; 
 int CPU_CLKSEL ; 
 int CR ; 
 int LDA15_EN ; 
 int LDOA15_CTRL ; 
 int LDOV12D_CTRL ; 
 int LDV12_EN ; 
 int PMC_FSM ; 
 scalar_t__ RTL8712_1stCUT ; 
 scalar_t__ RTL8712_2ndCUT ; 
 scalar_t__ RTL8712_3rdCUT ; 
 scalar_t__ RTL8712_FPGA ; 
 int SPS0_CTRL ; 
 int SPS1_CTRL ; 
 int SPS1_LDEN ; 
 int SPS1_SWEN ; 
 int SYS_CLKR ; 
 int SYS_CLKSEL ; 
 int SYS_FUNC_EN ; 
 int SYS_ISO_CTRL ; 
 int TCR ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int _TXDMA_EN ; 
 int _TXDMA_INIT_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

u8 FUNC6(struct _adapter *adapter)
{
	u8 val8 = 0;
	u8 ret = _SUCCESS;
	int PollingCnt = 20;
	struct registry_priv *registrypriv = &adapter->registrypriv;

	if (registrypriv->chip_version == RTL8712_FPGA) {
		val8 = 0x01;
		/* switch to 80M clock */
		FUNC4(adapter, SYS_CLKR, val8);
		val8 = FUNC2(adapter, SPS1_CTRL);
		val8 = val8 | 0x01;
		/* enable VSPS12 LDO Macro block */
		FUNC4(adapter, SPS1_CTRL, val8);
		val8 = FUNC2(adapter, AFE_MISC);
		val8 = val8 | 0x01;
		/* Enable AFE Macro Block's Bandgap */
		FUNC4(adapter, AFE_MISC, val8);
		val8 = FUNC2(adapter, LDOA15_CTRL);
		val8 = val8 | 0x01;
		/* enable LDOA15 block */
		FUNC4(adapter, LDOA15_CTRL, val8);
		val8 = FUNC2(adapter, SPS1_CTRL);
		val8 = val8 | 0x02;
		/* Enable VSPS12_SW Macro Block */
		FUNC4(adapter, SPS1_CTRL, val8);
		val8 = FUNC2(adapter, AFE_MISC);
		val8 = val8 | 0x02;
		/* Enable AFE Macro Block's Mbias */
		FUNC4(adapter, AFE_MISC, val8);
		val8 = FUNC2(adapter, SYS_ISO_CTRL + 1);
		val8 = val8 | 0x08;
		/* isolate PCIe Analog 1.2V to PCIe 3.3V and PCIE Digital */
		FUNC4(adapter, SYS_ISO_CTRL + 1, val8);
		val8 = FUNC2(adapter, SYS_ISO_CTRL + 1);
		val8 = val8 & 0xEF;
		/* attatch AFE PLL to MACTOP/BB/PCIe Digital */
		FUNC4(adapter, SYS_ISO_CTRL + 1, val8);
		val8 = FUNC2(adapter, AFE_XTAL_CTRL + 1);
		val8 = val8 & 0xFB;
		/* enable AFE clock */
		FUNC4(adapter, AFE_XTAL_CTRL + 1, val8);
		val8 = FUNC2(adapter, AFE_PLL_CTRL);
		val8 = val8 | 0x01;
		/* Enable AFE PLL Macro Block */
		FUNC4(adapter, AFE_PLL_CTRL, val8);
		val8 = 0xEE;
		/* release isolation AFE PLL & MD */
		FUNC4(adapter, SYS_ISO_CTRL, val8);
		val8 = FUNC2(adapter, SYS_CLKR + 1);
		val8 = val8 | 0x08;
		/* enable MAC clock */
		FUNC4(adapter, SYS_CLKR + 1, val8);
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		val8 = val8 | 0x08;
		/* enable Core digital and enable IOREG R/W */
		FUNC4(adapter, SYS_FUNC_EN + 1, val8);
		val8 = val8 | 0x80;
		/* enable REG_EN */
		FUNC4(adapter, SYS_FUNC_EN + 1, val8);
		val8 = FUNC2(adapter, SYS_CLKR + 1);
		val8 = (val8 | 0x80) & 0xBF;
		/* switch the control path */
		FUNC4(adapter, SYS_CLKR + 1, val8);
		val8 = 0xFC;
		FUNC4(adapter, CR, val8);
		val8 = 0x37;
		FUNC4(adapter, CR + 1, val8);
		/* reduce EndPoint & init it */
		FUNC4(adapter, 0x102500ab, FUNC2(adapter,
			     0x102500ab) | FUNC0(6) | FUNC0(7));
		/* consideration of power consumption - init */
		FUNC4(adapter, 0x10250008, FUNC2(adapter,
			     0x10250008) & 0xfffffffb);
	} else if (registrypriv->chip_version == RTL8712_1stCUT) {
		/* Initialization for power on sequence, */
		FUNC4(adapter, SPS0_CTRL + 1, 0x53);
		FUNC4(adapter, SPS0_CTRL, 0x57);
		/* Enable AFE Macro Block's Bandgap and Enable AFE Macro
		 * Block's Mbias
		 */
		val8 = FUNC2(adapter, AFE_MISC);
		FUNC4(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
			     AFE_MISC_MBEN));
		/* Enable LDOA15 block */
		val8 = FUNC2(adapter, LDOA15_CTRL);
		FUNC4(adapter, LDOA15_CTRL, (val8 | LDA15_EN));
		val8 = FUNC2(adapter, SPS1_CTRL);
		FUNC4(adapter, SPS1_CTRL, (val8 | SPS1_LDEN));
		FUNC1(20);
		/* Enable Switch Regulator Block */
		val8 = FUNC2(adapter, SPS1_CTRL);
		FUNC4(adapter, SPS1_CTRL, (val8 | SPS1_SWEN));
		FUNC3(adapter, SPS1_CTRL, 0x00a7b267);
		val8 = FUNC2(adapter, SYS_ISO_CTRL + 1);
		FUNC4(adapter, SYS_ISO_CTRL + 1, (val8 | 0x08));
		/* Engineer Packet CP test Enable */
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		FUNC4(adapter, SYS_FUNC_EN + 1, (val8 | 0x20));
		val8 = FUNC2(adapter, SYS_ISO_CTRL + 1);
		FUNC4(adapter, SYS_ISO_CTRL + 1, (val8 & 0x6F));
		/* Enable AFE clock */
		val8 = FUNC2(adapter, AFE_XTAL_CTRL + 1);
		FUNC4(adapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));
		/* Enable AFE PLL Macro Block */
		val8 = FUNC2(adapter, AFE_PLL_CTRL);
		FUNC4(adapter, AFE_PLL_CTRL, (val8 | 0x11));
		/* Attach AFE PLL to MACTOP/BB/PCIe Digital */
		val8 = FUNC2(adapter, SYS_ISO_CTRL);
		FUNC4(adapter, SYS_ISO_CTRL, (val8 & 0xEE));
		/* Switch to 40M clock */
		val8 = FUNC2(adapter, SYS_CLKR);
		FUNC4(adapter, SYS_CLKR, val8 & (~SYS_CLKSEL));
		/* SSC Disable */
		val8 = FUNC2(adapter, SYS_CLKR);
		/* Enable MAC clock */
		val8 = FUNC2(adapter, SYS_CLKR + 1);
		FUNC4(adapter, SYS_CLKR + 1, (val8 | 0x18));
		/* Revised POS, */
		FUNC4(adapter, PMC_FSM, 0x02);
		/* Enable Core digital and enable IOREG R/W */
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		FUNC4(adapter, SYS_FUNC_EN + 1, (val8 | 0x08));
		/* Enable REG_EN */
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		FUNC4(adapter, SYS_FUNC_EN + 1, (val8 | 0x80));
		/* Switch the control path to FW */
		val8 = FUNC2(adapter, SYS_CLKR + 1);
		FUNC4(adapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
		FUNC4(adapter, CR, 0xFC);
		FUNC4(adapter, CR + 1, 0x37);
		/* Fix the RX FIFO issue(usb error), */
		val8 = FUNC2(adapter, 0x1025FE5c);
		FUNC4(adapter, 0x1025FE5c, (val8 | FUNC0(7)));
		val8 = FUNC2(adapter, 0x102500ab);
		FUNC4(adapter, 0x102500ab, (val8 | FUNC0(6) | FUNC0(7)));
		/* For power save, used this in the bit file after 970621 */
		val8 = FUNC2(adapter, SYS_CLKR);
		FUNC4(adapter, SYS_CLKR, val8 & (~CPU_CLKSEL));
	} else if (registrypriv->chip_version == RTL8712_2ndCUT ||
		   registrypriv->chip_version == RTL8712_3rdCUT) {
		/* Initialization for power on sequence,
		 * E-Fuse leakage prevention sequence
		 */
		FUNC4(adapter, 0x37, 0xb0);
		FUNC1(20);
		FUNC4(adapter, 0x37, 0x30);
		/* Set control path switch to HW control and reset Digital Core,
		 * CPU Core and MAC I/O to solve FW download fail when system
		 * from resume sate.
		 */
		val8 = FUNC2(adapter, SYS_CLKR + 1);
		if (val8 & 0x80) {
			val8 &= 0x3f;
			FUNC4(adapter, SYS_CLKR + 1, val8);
		}
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		val8 &= 0x73;
		FUNC4(adapter, SYS_FUNC_EN + 1, val8);
		FUNC1(20);
		/* Revised POS, */
		/* Enable AFE Macro Block's Bandgap and Enable AFE Macro
		 * Block's Mbias
		 */
		FUNC4(adapter, SPS0_CTRL + 1, 0x53);
		FUNC4(adapter, SPS0_CTRL, 0x57);
		val8 = FUNC2(adapter, AFE_MISC);
		/*Bandgap*/
		FUNC4(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN));
		FUNC4(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
			     AFE_MISC_MBEN | AFE_MISC_I32_EN));
		/* Enable PLL Power (LDOA15V) */
		val8 = FUNC2(adapter, LDOA15_CTRL);
		FUNC4(adapter, LDOA15_CTRL, (val8 | LDA15_EN));
		/* Enable LDOV12D block */
		val8 = FUNC2(adapter, LDOV12D_CTRL);
		FUNC4(adapter, LDOV12D_CTRL, (val8 | LDV12_EN));
		val8 = FUNC2(adapter, SYS_ISO_CTRL + 1);
		FUNC4(adapter, SYS_ISO_CTRL + 1, (val8 | 0x08));
		/* Engineer Packet CP test Enable */
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		FUNC4(adapter, SYS_FUNC_EN + 1, (val8 | 0x20));
		/* Support 64k IMEM */
		val8 = FUNC2(adapter, SYS_ISO_CTRL + 1);
		FUNC4(adapter, SYS_ISO_CTRL + 1, (val8 & 0x68));
		/* Enable AFE clock */
		val8 = FUNC2(adapter, AFE_XTAL_CTRL + 1);
		FUNC4(adapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));
		/* Enable AFE PLL Macro Block */
		val8 = FUNC2(adapter, AFE_PLL_CTRL);
		FUNC4(adapter, AFE_PLL_CTRL, (val8 | 0x11));
		/* Some sample will download fw failure. The clock will be
		 * stable with 500 us delay after reset the PLL
		 * TODO: When usleep is added to kernel, change next 3
		 * udelay(500) to usleep(500)
		 */
		FUNC5(500);
		FUNC4(adapter, AFE_PLL_CTRL, (val8 | 0x51));
		FUNC5(500);
		FUNC4(adapter, AFE_PLL_CTRL, (val8 | 0x11));
		FUNC5(500);
		/* Attach AFE PLL to MACTOP/BB/PCIe Digital */
		val8 = FUNC2(adapter, SYS_ISO_CTRL);
		FUNC4(adapter, SYS_ISO_CTRL, (val8 & 0xEE));
		/* Switch to 40M clock */
		FUNC4(adapter, SYS_CLKR, 0x00);
		/* CPU Clock and 80M Clock SSC Disable to overcome FW download
		 * fail timing issue.
		 */
		val8 = FUNC2(adapter, SYS_CLKR);
		FUNC4(adapter, SYS_CLKR, (val8 | 0xa0));
		/* Enable MAC clock */
		val8 = FUNC2(adapter, SYS_CLKR + 1);
		FUNC4(adapter, SYS_CLKR + 1, (val8 | 0x18));
		/* Revised POS, */
		FUNC4(adapter, PMC_FSM, 0x02);
		/* Enable Core digital and enable IOREG R/W */
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		FUNC4(adapter, SYS_FUNC_EN + 1, (val8 | 0x08));
		/* Enable REG_EN */
		val8 = FUNC2(adapter, SYS_FUNC_EN + 1);
		FUNC4(adapter, SYS_FUNC_EN + 1, (val8 | 0x80));
		/* Switch the control path to FW */
		val8 = FUNC2(adapter, SYS_CLKR + 1);
		FUNC4(adapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
		FUNC4(adapter, CR, 0xFC);
		FUNC4(adapter, CR + 1, 0x37);
		/* Fix the RX FIFO issue(usb error), 970410 */
		val8 = FUNC2(adapter, 0x1025FE5c);
		FUNC4(adapter, 0x1025FE5c, (val8 | FUNC0(7)));
		/* For power save, used this in the bit file after 970621 */
		val8 = FUNC2(adapter, SYS_CLKR);
		FUNC4(adapter, SYS_CLKR, val8 & (~CPU_CLKSEL));
		/* Revised for 8051 ROM code wrong operation. */
		FUNC4(adapter, 0x1025fe1c, 0x80);
		/* To make sure that TxDMA can ready to download FW.
		 * We should reset TxDMA if IMEM RPT was not ready.
		 */
		do {
			val8 = FUNC2(adapter, TCR);
			if ((val8 & _TXDMA_INIT_VALUE) == _TXDMA_INIT_VALUE)
				break;
			FUNC5(5); /* PlatformStallExecution(5); */
		} while (PollingCnt--);	/* Delay 1ms */

		if (PollingCnt <= 0) {
			val8 = FUNC2(adapter, CR);
			FUNC4(adapter, CR, val8 & (~_TXDMA_EN));
			FUNC5(2); /* PlatformStallExecution(2); */
			/* Reset TxDMA */
			FUNC4(adapter, CR, val8 | _TXDMA_EN);
		}
	} else {
		ret = _FAIL;
	}
	return ret;
}