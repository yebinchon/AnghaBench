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
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int /*<<< orphan*/  txmixer_gain_24g; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFCSR17_TXMIXER_GAIN ; 
 int /*<<< orphan*/  RFCSR1_PLL_PD ; 
 int /*<<< orphan*/  RFCSR1_RF_BLOCK_EN ; 
 int /*<<< orphan*/  RFCSR30_RX_VCM ; 
 int /*<<< orphan*/  RFCSR38_RX_LO1_EN ; 
 int /*<<< orphan*/  RFCSR39_RX_LO2_EN ; 
 int /*<<< orphan*/  RFCSR50_TX_LO2_EN ; 
 int /*<<< orphan*/  RFCSR51_BITS24 ; 
 int FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u8 rfcsr;
	u8 tx_gain;

	rfcsr = FUNC0(rt2x00dev, 50);
	FUNC3(&rfcsr, RFCSR50_TX_LO2_EN, 0);
	FUNC1(rt2x00dev, 50, rfcsr);

	rfcsr = FUNC0(rt2x00dev, 51);
	tx_gain = FUNC2(drv_data->txmixer_gain_24g,
				    RFCSR17_TXMIXER_GAIN);
	FUNC3(&rfcsr, RFCSR51_BITS24, tx_gain);
	FUNC1(rt2x00dev, 51, rfcsr);

	rfcsr = FUNC0(rt2x00dev, 38);
	FUNC3(&rfcsr, RFCSR38_RX_LO1_EN, 0);
	FUNC1(rt2x00dev, 38, rfcsr);

	rfcsr = FUNC0(rt2x00dev, 39);
	FUNC3(&rfcsr, RFCSR39_RX_LO2_EN, 0);
	FUNC1(rt2x00dev, 39, rfcsr);

	rfcsr = FUNC0(rt2x00dev, 1);
	FUNC3(&rfcsr, RFCSR1_RF_BLOCK_EN, 1);
	FUNC3(&rfcsr, RFCSR1_PLL_PD, 1);
	FUNC1(rt2x00dev, 1, rfcsr);

	rfcsr = FUNC0(rt2x00dev, 30);
	FUNC3(&rfcsr, RFCSR30_RX_VCM, 2);
	FUNC1(rt2x00dev, 30, rfcsr);

	/* TODO: enable stream mode */
}