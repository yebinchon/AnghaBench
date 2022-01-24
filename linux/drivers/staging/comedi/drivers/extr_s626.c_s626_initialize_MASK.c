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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ logical_base; scalar_t__ physical_base; } ;
struct TYPE_3__ {scalar_t__ physical_base; } ;
struct s626_private {int i2c_adrs; int* dac_wbuf; TYPE_2__ ana_buf; TYPE_1__ rps_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; struct comedi_subdevice* read_subdev; struct s626_private* private; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int S626_ACON1_ADCSTART ; 
 int S626_ACON1_DACSTART ; 
 int S626_ACON2_INIT ; 
 int S626_DAC_CHANNELS ; 
 int S626_DAC_WDMABUF_OS ; 
 int S626_DEBI_CFG_INTEL ; 
 int S626_DEBI_CFG_SLAVE16 ; 
 int S626_DEBI_CFG_TOUT_BIT ; 
 int S626_DEBI_PAGE_DISABLE ; 
 int S626_DEBI_SWAP ; 
 int S626_DEBI_TOUT ; 
 int /*<<< orphan*/  S626_EOPL ; 
 int S626_EOS ; 
 int S626_GPIO1_HI ; 
 int S626_GPIO_BASE ; 
 int S626_I2C_ABORT ; 
 int S626_I2C_CLKSEL ; 
 int S626_LF_A2 ; 
 int /*<<< orphan*/  S626_LP_RDMISC2 ; 
 int S626_MC1_AUDIO ; 
 int S626_MC1_DEBI ; 
 int S626_MC1_I2C ; 
 int S626_MC2_UPLD_IIC ; 
 int S626_MISC2_BATT_ENABLE ; 
 scalar_t__ S626_P_ACON1 ; 
 scalar_t__ S626_P_ACON2 ; 
 scalar_t__ S626_P_BASEA2_OUT ; 
 scalar_t__ S626_P_DEBICFG ; 
 scalar_t__ S626_P_DEBIPAGE ; 
 scalar_t__ S626_P_GPIO ; 
 scalar_t__ S626_P_I2CSTAT ; 
 int /*<<< orphan*/  S626_P_MC1 ; 
 int /*<<< orphan*/  S626_P_MC2 ; 
 scalar_t__ S626_P_PAGEA2_OUT ; 
 scalar_t__ S626_P_PCI_BT_A ; 
 scalar_t__ S626_P_PROTA2_OUT ; 
 scalar_t__ S626_P_RPS1_TOUT ; 
 scalar_t__ S626_P_RPSADDR1 ; 
 scalar_t__ S626_P_RPSPAGE1 ; 
 scalar_t__ S626_P_TSL1 ; 
 int S626_RSD1 ; 
 int S626_RSD3 ; 
 int S626_SIB_A1 ; 
 int S626_SIB_A2 ; 
 scalar_t__ FUNC0 (int) ; 
 int S626_XSD2 ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  s626_i2c_handshake_eoc ; 
 int FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct comedi_device *dev)
{
	struct s626_private *devpriv = dev->private;
	dma_addr_t phys_buf;
	u16 chan;
	int i;
	int ret;

	/* Enable DEBI and audio pins, enable I2C interface */
	FUNC7(dev, S626_MC1_DEBI | S626_MC1_AUDIO | S626_MC1_I2C,
		       S626_P_MC1);

	/*
	 * Configure DEBI operating mode
	 *
	 *  Local bus is 16 bits wide
	 *  Declare DEBI transfer timeout interval
	 *  Set up byte lane steering
	 *  Intel-compatible local bus (DEBI never times out)
	 */
	FUNC11(S626_DEBI_CFG_SLAVE16 |
	       (S626_DEBI_TOUT << S626_DEBI_CFG_TOUT_BIT) | S626_DEBI_SWAP |
	       S626_DEBI_CFG_INTEL, dev->mmio + S626_P_DEBICFG);

	/* Disable MMU paging */
	FUNC11(S626_DEBI_PAGE_DISABLE, dev->mmio + S626_P_DEBIPAGE);

	/* Init GPIO so that ADC Start* is negated */
	FUNC11(S626_GPIO_BASE | S626_GPIO1_HI, dev->mmio + S626_P_GPIO);

	/* I2C device address for onboard eeprom (revb) */
	devpriv->i2c_adrs = 0xA0;

	/*
	 * Issue an I2C ABORT command to halt any I2C
	 * operation in progress and reset BUSY flag.
	 */
	FUNC11(S626_I2C_CLKSEL | S626_I2C_ABORT,
	       dev->mmio + S626_P_I2CSTAT);
	FUNC7(dev, S626_MC2_UPLD_IIC, S626_P_MC2);
	ret = FUNC1(dev, NULL, NULL, s626_i2c_handshake_eoc, 0);
	if (ret)
		return ret;

	/*
	 * Per SAA7146 data sheet, write to STATUS
	 * reg twice to reset all  I2C error flags.
	 */
	for (i = 0; i < 2; i++) {
		FUNC11(S626_I2C_CLKSEL, dev->mmio + S626_P_I2CSTAT);
		FUNC7(dev, S626_MC2_UPLD_IIC, S626_P_MC2);
		ret = FUNC1(dev, NULL,
				     NULL, s626_i2c_handshake_eoc, 0);
		if (ret)
			return ret;
	}

	/*
	 * Init audio interface functional attributes: set DAC/ADC
	 * serial clock rates, invert DAC serial clock so that
	 * DAC data setup times are satisfied, enable DAC serial
	 * clock out.
	 */
	FUNC11(S626_ACON2_INIT, dev->mmio + S626_P_ACON2);

	/*
	 * Set up TSL1 slot list, which is used to control the
	 * accumulation of ADC data: S626_RSD1 = shift data in on SD1.
	 * S626_SIB_A1  = store data uint8_t at next available location
	 * in FB BUFFER1 register.
	 */
	FUNC11(S626_RSD1 | S626_SIB_A1, dev->mmio + S626_P_TSL1);
	FUNC11(S626_RSD1 | S626_SIB_A1 | S626_EOS,
	       dev->mmio + S626_P_TSL1 + 4);

	/* Enable TSL1 slot list so that it executes all the time */
	FUNC11(S626_ACON1_ADCSTART, dev->mmio + S626_P_ACON1);

	/*
	 * Initialize RPS registers used for ADC
	 */

	/* Physical start of RPS program */
	FUNC11((u32)devpriv->rps_buf.physical_base,
	       dev->mmio + S626_P_RPSADDR1);
	/* RPS program performs no explicit mem writes */
	FUNC11(0, dev->mmio + S626_P_RPSPAGE1);
	/* Disable RPS timeouts */
	FUNC11(0, dev->mmio + S626_P_RPS1_TOUT);

#if 0
	/*
	 * SAA7146 BUG WORKAROUND
	 *
	 * Initialize SAA7146 ADC interface to a known state by
	 * invoking ADCs until FB BUFFER 1 register shows that it
	 * is correctly receiving ADC data. This is necessary
	 * because the SAA7146 ADC interface does not start up in
	 * a defined state after a PCI reset.
	 */
	{
		struct comedi_subdevice *s = dev->read_subdev;
		u8 poll_list;
		u16 adc_data;
		u16 start_val;
		u16 index;
		unsigned int data[16];

		/* Create a simple polling list for analog input channel 0 */
		poll_list = S626_EOPL;
		s626_reset_adc(dev, &poll_list);

		/* Get initial ADC value */
		s626_ai_rinsn(dev, s, NULL, data);
		start_val = data[0];

		/*
		 * VERSION 2.01 CHANGE: TIMEOUT ADDED TO PREVENT HANGED
		 * EXECUTION.
		 *
		 * Invoke ADCs until the new ADC value differs from the initial
		 * value or a timeout occurs.  The timeout protects against the
		 * possibility that the driver is restarting and the ADC data is
		 * a fixed value resulting from the applied ADC analog input
		 * being unusually quiet or at the rail.
		 */
		for (index = 0; index < 500; index++) {
			s626_ai_rinsn(dev, s, NULL, data);
			adc_data = data[0];
			if (adc_data != start_val)
				break;
		}
	}
#endif	/* SAA7146 BUG WORKAROUND */

	/*
	 * Initialize the DAC interface
	 */

	/*
	 * Init Audio2's output DMAC attributes:
	 *   burst length = 1 DWORD
	 *   threshold = 1 DWORD.
	 */
	FUNC11(0, dev->mmio + S626_P_PCI_BT_A);

	/*
	 * Init Audio2's output DMA physical addresses.  The protection
	 * address is set to 1 DWORD past the base address so that a
	 * single DWORD will be transferred each time a DMA transfer is
	 * enabled.
	 */
	phys_buf = devpriv->ana_buf.physical_base +
		   (S626_DAC_WDMABUF_OS * sizeof(u32));
	FUNC11((u32)phys_buf, dev->mmio + S626_P_BASEA2_OUT);
	FUNC11((u32)(phys_buf + sizeof(u32)),
	       dev->mmio + S626_P_PROTA2_OUT);

	/*
	 * Cache Audio2's output DMA buffer logical address.  This is
	 * where DAC data is buffered for A2 output DMA transfers.
	 */
	devpriv->dac_wbuf = (u32 *)devpriv->ana_buf.logical_base +
			    S626_DAC_WDMABUF_OS;

	/*
	 * Audio2's output channels does not use paging.  The
	 * protection violation handling bit is set so that the
	 * DMAC will automatically halt and its PCI address pointer
	 * will be reset when the protection address is reached.
	 */
	FUNC11(8, dev->mmio + S626_P_PAGEA2_OUT);

	/*
	 * Initialize time slot list 2 (TSL2), which is used to control
	 * the clock generation for and serialization of data to be sent
	 * to the DAC devices.  Slot 0 is a NOP that is used to trap TSL
	 * execution; this permits other slots to be safely modified
	 * without first turning off the TSL sequencer (which is
	 * apparently impossible to do).  Also, SD3 (which is driven by a
	 * pull-up resistor) is shifted in and stored to the MSB of
	 * FB_BUFFER2 to be used as evidence that the slot sequence has
	 * not yet finished executing.
	 */

	/* Slot 0: Trap TSL execution, shift 0xFF into FB_BUFFER2 */
	FUNC11(S626_XSD2 | S626_RSD3 | S626_SIB_A2 | S626_EOS,
	       dev->mmio + FUNC0(0));

	/*
	 * Initialize slot 1, which is constant.  Slot 1 causes a
	 * DWORD to be transferred from audio channel 2's output FIFO
	 * to the FIFO's output buffer so that it can be serialized
	 * and sent to the DAC during subsequent slots.  All remaining
	 * slots are dynamically populated as required by the target
	 * DAC device.
	 */

	/* Slot 1: Fetch DWORD from Audio2's output FIFO */
	FUNC11(S626_LF_A2, dev->mmio + FUNC0(1));

	/* Start DAC's audio interface (TSL2) running */
	FUNC11(S626_ACON1_DACSTART, dev->mmio + S626_P_ACON1);

	/*
	 * Init Trim DACs to calibrated values.  Do it twice because the
	 * SAA7146 audio channel does not always reset properly and
	 * sometimes causes the first few TrimDAC writes to malfunction.
	 */
	FUNC6(dev);
	ret = FUNC6(dev);
	if (ret)
		return ret;

	/*
	 * Manually init all gate array hardware in case this is a soft
	 * reset (we have no way of determining whether this is a warm
	 * or cold start).  This is necessary because the gate array will
	 * reset only in response to a PCI hard reset; there is no soft
	 * reset function.
	 */

	/*
	 * Init all DAC outputs to 0V and init all DAC setpoint and
	 * polarity images.
	 */
	for (chan = 0; chan < S626_DAC_CHANNELS; chan++) {
		ret = FUNC9(dev, chan, 0);
		if (ret)
			return ret;
	}

	/* Init counters */
	FUNC3(dev);

	/*
	 * Without modifying the state of the Battery Backup enab, disable
	 * the watchdog timer, set DIO channels 0-5 to operate in the
	 * standard DIO (vs. counter overflow) mode, disable the battery
	 * charger, and reset the watchdog interval selector to zero.
	 */
	FUNC10(dev, (FUNC4(dev, S626_LP_RDMISC2) &
			       S626_MISC2_BATT_ENABLE));

	/* Initialize the digital I/O subsystem */
	FUNC5(dev);

	return 0;
}