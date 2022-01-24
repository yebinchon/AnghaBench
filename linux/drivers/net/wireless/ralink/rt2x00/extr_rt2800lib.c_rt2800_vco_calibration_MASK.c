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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int tx_chain_num; int rx_chain_num; } ;
struct TYPE_3__ {int rf; } ;
struct rt2x00_dev {int rf_channel; TYPE_2__ default_ant; TYPE_1__ chip; } ;

/* Variables and functions */
#define  RF2020 146 
#define  RF3020 145 
#define  RF3021 144 
#define  RF3022 143 
#define  RF3052 142 
#define  RF3053 141 
#define  RF3070 140 
#define  RF3290 139 
#define  RF3320 138 
#define  RF3853 137 
#define  RF5350 136 
#define  RF5360 135 
#define  RF5362 134 
#define  RF5370 133 
#define  RF5372 132 
#define  RF5390 131 
#define  RF5392 130 
#define  RF5592 129 
#define  RF7620 128 
 int /*<<< orphan*/  RFCSR3_VCOCAL_EN ; 
 int /*<<< orphan*/  RFCSR4_VCOCAL_EN ; 
 int /*<<< orphan*/  RFCSR7_RF_TUNING ; 
 int /*<<< orphan*/  RT6352 ; 
 int /*<<< orphan*/  TX_PIN_CFG ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A2_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_DISABLE ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G2_EN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

void FUNC11(struct rt2x00_dev *rt2x00dev)
{
	u32	tx_pin;
	u8	rfcsr;
	unsigned long min_sleep = 0;

	/*
	 * A voltage-controlled oscillator(VCO) is an electronic oscillator
	 * designed to be controlled in oscillation frequency by a voltage
	 * input. Maybe the temperature will affect the frequency of
	 * oscillation to be shifted. The VCO calibration will be called
	 * periodically to adjust the frequency to be precision.
	*/

	tx_pin = FUNC2(rt2x00dev, TX_PIN_CFG);
	tx_pin &= TX_PIN_CFG_PA_PE_DISABLE;
	FUNC3(rt2x00dev, TX_PIN_CFG, tx_pin);

	switch (rt2x00dev->chip.rf) {
	case RF2020:
	case RF3020:
	case RF3021:
	case RF3022:
	case RF3320:
	case RF3052:
		rfcsr = FUNC4(rt2x00dev, 7);
		FUNC9(&rfcsr, RFCSR7_RF_TUNING, 1);
		FUNC5(rt2x00dev, 7, rfcsr);
		break;
	case RF3053:
	case RF3070:
	case RF3290:
	case RF3853:
	case RF5350:
	case RF5360:
	case RF5362:
	case RF5370:
	case RF5372:
	case RF5390:
	case RF5392:
	case RF5592:
		rfcsr = FUNC4(rt2x00dev, 3);
		FUNC9(&rfcsr, RFCSR3_VCOCAL_EN, 1);
		FUNC5(rt2x00dev, 3, rfcsr);
		min_sleep = 1000;
		break;
	case RF7620:
		FUNC5(rt2x00dev, 5, 0x40);
		FUNC5(rt2x00dev, 4, 0x0C);
		rfcsr = FUNC4(rt2x00dev, 4);
		FUNC9(&rfcsr, RFCSR4_VCOCAL_EN, 1);
		FUNC5(rt2x00dev, 4, rfcsr);
		min_sleep = 2000;
		break;
	default:
		FUNC0(1, "Not supported RF chipset %x for VCO recalibration",
			  rt2x00dev->chip.rf);
		return;
	}

	if (min_sleep > 0)
		FUNC10(min_sleep, min_sleep * 2);

	tx_pin = FUNC2(rt2x00dev, TX_PIN_CFG);
	if (rt2x00dev->rf_channel <= 14) {
		switch (rt2x00dev->default_ant.tx_chain_num) {
		case 3:
			FUNC8(&tx_pin, TX_PIN_CFG_PA_PE_G2_EN, 1);
			/* fall through */
		case 2:
			FUNC8(&tx_pin, TX_PIN_CFG_PA_PE_G1_EN, 1);
			/* fall through */
		case 1:
		default:
			FUNC8(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN, 1);
			break;
		}
	} else {
		switch (rt2x00dev->default_ant.tx_chain_num) {
		case 3:
			FUNC8(&tx_pin, TX_PIN_CFG_PA_PE_A2_EN, 1);
			/* fall through */
		case 2:
			FUNC8(&tx_pin, TX_PIN_CFG_PA_PE_A1_EN, 1);
			/* fall through */
		case 1:
		default:
			FUNC8(&tx_pin, TX_PIN_CFG_PA_PE_A0_EN, 1);
			break;
		}
	}
	FUNC3(rt2x00dev, TX_PIN_CFG, tx_pin);

	if (FUNC7(rt2x00dev, RT6352)) {
		if (rt2x00dev->default_ant.rx_chain_num == 1) {
			FUNC1(rt2x00dev, 91, 0x07);
			FUNC1(rt2x00dev, 95, 0x1A);
			FUNC1(rt2x00dev, 195, 128);
			FUNC1(rt2x00dev, 196, 0xA0);
			FUNC1(rt2x00dev, 195, 170);
			FUNC1(rt2x00dev, 196, 0x12);
			FUNC1(rt2x00dev, 195, 171);
			FUNC1(rt2x00dev, 196, 0x10);
		} else {
			FUNC1(rt2x00dev, 91, 0x06);
			FUNC1(rt2x00dev, 95, 0x9A);
			FUNC1(rt2x00dev, 195, 128);
			FUNC1(rt2x00dev, 196, 0xE0);
			FUNC1(rt2x00dev, 195, 170);
			FUNC1(rt2x00dev, 196, 0x30);
			FUNC1(rt2x00dev, 195, 171);
			FUNC1(rt2x00dev, 196, 0x30);
		}

		if (FUNC6(rt2x00dev)) {
			FUNC1(rt2x00dev, 75, 0x68);
			FUNC1(rt2x00dev, 76, 0x4C);
			FUNC1(rt2x00dev, 79, 0x1C);
			FUNC1(rt2x00dev, 80, 0x0C);
			FUNC1(rt2x00dev, 82, 0xB6);
		}

		/* On 11A, We should delay and wait RF/BBP to be stable
		 * and the appropriate time should be 1000 micro seconds
		 * 2005/06/05 - On 11G, we also need this delay time.
		 * Otherwise it's difficult to pass the WHQL.
		 */
		FUNC10(1000, 1500);
	}
}