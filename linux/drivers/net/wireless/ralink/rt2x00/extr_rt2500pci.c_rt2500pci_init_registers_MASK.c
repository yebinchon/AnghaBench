#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rt2x00_dev {TYPE_2__* ops; TYPE_3__* rx; } ;
struct TYPE_6__ {int data_size; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {scalar_t__ (* set_device_state ) (struct rt2x00_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ARTCSR0 ; 
 int /*<<< orphan*/  ARTCSR0_ACK_CTS_11MBS ; 
 int /*<<< orphan*/  ARTCSR0_ACK_CTS_1MBS ; 
 int /*<<< orphan*/  ARTCSR0_ACK_CTS_2MBS ; 
 int /*<<< orphan*/  ARTCSR0_ACK_CTS_5_5MBS ; 
 int /*<<< orphan*/  ARTCSR1 ; 
 int /*<<< orphan*/  ARTCSR1_ACK_CTS_12MBS ; 
 int /*<<< orphan*/  ARTCSR1_ACK_CTS_18MBS ; 
 int /*<<< orphan*/  ARTCSR1_ACK_CTS_6MBS ; 
 int /*<<< orphan*/  ARTCSR1_ACK_CTS_9MBS ; 
 int /*<<< orphan*/  ARTCSR2 ; 
 int /*<<< orphan*/  ARTCSR2_ACK_CTS_24MBS ; 
 int /*<<< orphan*/  ARTCSR2_ACK_CTS_36MBS ; 
 int /*<<< orphan*/  ARTCSR2_ACK_CTS_48MBS ; 
 int /*<<< orphan*/  ARTCSR2_ACK_CTS_54MBS ; 
 int /*<<< orphan*/  BBPCSR1 ; 
 int /*<<< orphan*/  CNT0 ; 
 int /*<<< orphan*/  CNT3 ; 
 int /*<<< orphan*/  CNT4 ; 
 int /*<<< orphan*/  CSR1 ; 
 int /*<<< orphan*/  CSR11 ; 
 int /*<<< orphan*/  CSR11_CW_SELECT ; 
 int /*<<< orphan*/  CSR14 ; 
 int /*<<< orphan*/  CSR14_BEACON_GEN ; 
 int /*<<< orphan*/  CSR14_CFP_COUNT_PRELOAD ; 
 int /*<<< orphan*/  CSR14_TATIMW ; 
 int /*<<< orphan*/  CSR14_TBCM_PRELOAD ; 
 int /*<<< orphan*/  CSR14_TBCN ; 
 int /*<<< orphan*/  CSR14_TCFP ; 
 int /*<<< orphan*/  CSR14_TSF_COUNT ; 
 int /*<<< orphan*/  CSR14_TSF_SYNC ; 
 int /*<<< orphan*/  CSR1_BBP_RESET ; 
 int /*<<< orphan*/  CSR1_HOST_READY ; 
 int /*<<< orphan*/  CSR1_SOFT_RESET ; 
 int /*<<< orphan*/  CSR9 ; 
 int /*<<< orphan*/  CSR9_MAX_FRAME_UNIT ; 
 int EBUSY ; 
 int /*<<< orphan*/  GPIOCSR ; 
 int /*<<< orphan*/  MACCSR0 ; 
 int /*<<< orphan*/  MACCSR1 ; 
 int /*<<< orphan*/  MACCSR2 ; 
 int /*<<< orphan*/  MACCSR2_DELAY ; 
 int /*<<< orphan*/  PCICSR ; 
 int /*<<< orphan*/  PCICSR_BIG_ENDIAN ; 
 int /*<<< orphan*/  PCICSR_BURST_LENTH ; 
 int /*<<< orphan*/  PCICSR_ENABLE_CLK ; 
 int /*<<< orphan*/  PCICSR_READ_MULTIPLE ; 
 int /*<<< orphan*/  PCICSR_RX_TRESHOLD ; 
 int /*<<< orphan*/  PCICSR_TX_TRESHOLD ; 
 int /*<<< orphan*/  PCICSR_WRITE_INVALID ; 
 int /*<<< orphan*/  PSCSR0 ; 
 int /*<<< orphan*/  PSCSR1 ; 
 int /*<<< orphan*/  PSCSR2 ; 
 int /*<<< orphan*/  PSCSR3 ; 
 int /*<<< orphan*/  PWRCSR0 ; 
 int /*<<< orphan*/  RALINKCSR ; 
 int /*<<< orphan*/  RALINKCSR_AR_BBP_DATA0 ; 
 int /*<<< orphan*/  RALINKCSR_AR_BBP_DATA1 ; 
 int /*<<< orphan*/  RALINKCSR_AR_BBP_ID0 ; 
 int /*<<< orphan*/  RALINKCSR_AR_BBP_ID1 ; 
 int /*<<< orphan*/  RALINKCSR_AR_BBP_VALID0 ; 
 int /*<<< orphan*/  RALINKCSR_AR_BBP_VALID1 ; 
 int /*<<< orphan*/  RXCSR3 ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID0 ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID0_VALID ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID1 ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID1_VALID ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID2 ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID2_VALID ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID3 ; 
 int /*<<< orphan*/  RXCSR3_BBP_ID3_VALID ; 
 int /*<<< orphan*/  STATE_AWAKE ; 
 int /*<<< orphan*/  TESTCSR ; 
 int /*<<< orphan*/  TIMECSR ; 
 int /*<<< orphan*/  TIMECSR_BEACON_EXPECT ; 
 int /*<<< orphan*/  TIMECSR_US_64_COUNT ; 
 int /*<<< orphan*/  TIMECSR_US_COUNT ; 
 int /*<<< orphan*/  TXACKCSR0 ; 
 int /*<<< orphan*/  TXCSR8 ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID0 ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID0_VALID ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID1 ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID1_VALID ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID2 ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID2_VALID ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID3 ; 
 int /*<<< orphan*/  TXCSR8_BBP_ID3_VALID ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	FUNC2(rt2x00dev, PSCSR0, 0x00020002);
	FUNC2(rt2x00dev, PSCSR1, 0x00000002);
	FUNC2(rt2x00dev, PSCSR2, 0x00020002);
	FUNC2(rt2x00dev, PSCSR3, 0x00000002);

	reg = FUNC1(rt2x00dev, TIMECSR);
	FUNC0(&reg, TIMECSR_US_COUNT, 33);
	FUNC0(&reg, TIMECSR_US_64_COUNT, 63);
	FUNC0(&reg, TIMECSR_BEACON_EXPECT, 0);
	FUNC2(rt2x00dev, TIMECSR, reg);

	reg = FUNC1(rt2x00dev, CSR9);
	FUNC0(&reg, CSR9_MAX_FRAME_UNIT,
			   rt2x00dev->rx->data_size / 128);
	FUNC2(rt2x00dev, CSR9, reg);

	/*
	 * Always use CWmin and CWmax set in descriptor.
	 */
	reg = FUNC1(rt2x00dev, CSR11);
	FUNC0(&reg, CSR11_CW_SELECT, 0);
	FUNC2(rt2x00dev, CSR11, reg);

	reg = FUNC1(rt2x00dev, CSR14);
	FUNC0(&reg, CSR14_TSF_COUNT, 0);
	FUNC0(&reg, CSR14_TSF_SYNC, 0);
	FUNC0(&reg, CSR14_TBCN, 0);
	FUNC0(&reg, CSR14_TCFP, 0);
	FUNC0(&reg, CSR14_TATIMW, 0);
	FUNC0(&reg, CSR14_BEACON_GEN, 0);
	FUNC0(&reg, CSR14_CFP_COUNT_PRELOAD, 0);
	FUNC0(&reg, CSR14_TBCM_PRELOAD, 0);
	FUNC2(rt2x00dev, CSR14, reg);

	FUNC2(rt2x00dev, CNT3, 0);

	reg = FUNC1(rt2x00dev, TXCSR8);
	FUNC0(&reg, TXCSR8_BBP_ID0, 10);
	FUNC0(&reg, TXCSR8_BBP_ID0_VALID, 1);
	FUNC0(&reg, TXCSR8_BBP_ID1, 11);
	FUNC0(&reg, TXCSR8_BBP_ID1_VALID, 1);
	FUNC0(&reg, TXCSR8_BBP_ID2, 13);
	FUNC0(&reg, TXCSR8_BBP_ID2_VALID, 1);
	FUNC0(&reg, TXCSR8_BBP_ID3, 12);
	FUNC0(&reg, TXCSR8_BBP_ID3_VALID, 1);
	FUNC2(rt2x00dev, TXCSR8, reg);

	reg = FUNC1(rt2x00dev, ARTCSR0);
	FUNC0(&reg, ARTCSR0_ACK_CTS_1MBS, 112);
	FUNC0(&reg, ARTCSR0_ACK_CTS_2MBS, 56);
	FUNC0(&reg, ARTCSR0_ACK_CTS_5_5MBS, 20);
	FUNC0(&reg, ARTCSR0_ACK_CTS_11MBS, 10);
	FUNC2(rt2x00dev, ARTCSR0, reg);

	reg = FUNC1(rt2x00dev, ARTCSR1);
	FUNC0(&reg, ARTCSR1_ACK_CTS_6MBS, 45);
	FUNC0(&reg, ARTCSR1_ACK_CTS_9MBS, 37);
	FUNC0(&reg, ARTCSR1_ACK_CTS_12MBS, 33);
	FUNC0(&reg, ARTCSR1_ACK_CTS_18MBS, 29);
	FUNC2(rt2x00dev, ARTCSR1, reg);

	reg = FUNC1(rt2x00dev, ARTCSR2);
	FUNC0(&reg, ARTCSR2_ACK_CTS_24MBS, 29);
	FUNC0(&reg, ARTCSR2_ACK_CTS_36MBS, 25);
	FUNC0(&reg, ARTCSR2_ACK_CTS_48MBS, 25);
	FUNC0(&reg, ARTCSR2_ACK_CTS_54MBS, 25);
	FUNC2(rt2x00dev, ARTCSR2, reg);

	reg = FUNC1(rt2x00dev, RXCSR3);
	FUNC0(&reg, RXCSR3_BBP_ID0, 47); /* CCK Signal */
	FUNC0(&reg, RXCSR3_BBP_ID0_VALID, 1);
	FUNC0(&reg, RXCSR3_BBP_ID1, 51); /* Rssi */
	FUNC0(&reg, RXCSR3_BBP_ID1_VALID, 1);
	FUNC0(&reg, RXCSR3_BBP_ID2, 42); /* OFDM Rate */
	FUNC0(&reg, RXCSR3_BBP_ID2_VALID, 1);
	FUNC0(&reg, RXCSR3_BBP_ID3, 51); /* RSSI */
	FUNC0(&reg, RXCSR3_BBP_ID3_VALID, 1);
	FUNC2(rt2x00dev, RXCSR3, reg);

	reg = FUNC1(rt2x00dev, PCICSR);
	FUNC0(&reg, PCICSR_BIG_ENDIAN, 0);
	FUNC0(&reg, PCICSR_RX_TRESHOLD, 0);
	FUNC0(&reg, PCICSR_TX_TRESHOLD, 3);
	FUNC0(&reg, PCICSR_BURST_LENTH, 1);
	FUNC0(&reg, PCICSR_ENABLE_CLK, 1);
	FUNC0(&reg, PCICSR_READ_MULTIPLE, 1);
	FUNC0(&reg, PCICSR_WRITE_INVALID, 1);
	FUNC2(rt2x00dev, PCICSR, reg);

	FUNC2(rt2x00dev, PWRCSR0, 0x3f3b3100);

	FUNC2(rt2x00dev, GPIOCSR, 0x0000ff00);
	FUNC2(rt2x00dev, TESTCSR, 0x000000f0);

	if (rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_AWAKE))
		return -EBUSY;

	FUNC2(rt2x00dev, MACCSR0, 0x00213223);
	FUNC2(rt2x00dev, MACCSR1, 0x00235518);

	reg = FUNC1(rt2x00dev, MACCSR2);
	FUNC0(&reg, MACCSR2_DELAY, 64);
	FUNC2(rt2x00dev, MACCSR2, reg);

	reg = FUNC1(rt2x00dev, RALINKCSR);
	FUNC0(&reg, RALINKCSR_AR_BBP_DATA0, 17);
	FUNC0(&reg, RALINKCSR_AR_BBP_ID0, 26);
	FUNC0(&reg, RALINKCSR_AR_BBP_VALID0, 1);
	FUNC0(&reg, RALINKCSR_AR_BBP_DATA1, 0);
	FUNC0(&reg, RALINKCSR_AR_BBP_ID1, 26);
	FUNC0(&reg, RALINKCSR_AR_BBP_VALID1, 1);
	FUNC2(rt2x00dev, RALINKCSR, reg);

	FUNC2(rt2x00dev, BBPCSR1, 0x82188200);

	FUNC2(rt2x00dev, TXACKCSR0, 0x00000020);

	reg = FUNC1(rt2x00dev, CSR1);
	FUNC0(&reg, CSR1_SOFT_RESET, 1);
	FUNC0(&reg, CSR1_BBP_RESET, 0);
	FUNC0(&reg, CSR1_HOST_READY, 0);
	FUNC2(rt2x00dev, CSR1, reg);

	reg = FUNC1(rt2x00dev, CSR1);
	FUNC0(&reg, CSR1_SOFT_RESET, 0);
	FUNC0(&reg, CSR1_HOST_READY, 1);
	FUNC2(rt2x00dev, CSR1, reg);

	/*
	 * We must clear the FCS and FIFO error count.
	 * These registers are cleared on read,
	 * so we may pass a useless variable to store the value.
	 */
	reg = FUNC1(rt2x00dev, CNT0);
	reg = FUNC1(rt2x00dev, CNT4);

	return 0;
}