#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int rx_chain_num; } ;
struct rt2x00_dev {TYPE_1__ default_ant; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP105_MLD ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev)
{
	u8 bbp;
	bool txbf_enabled = false; /* FIXME */

	bbp = FUNC1(rt2x00dev, 105);
	if (rt2x00dev->default_ant.rx_chain_num == 1)
		FUNC3(&bbp, BBP105_MLD, 0);
	else
		FUNC3(&bbp, BBP105_MLD, 1);
	FUNC2(rt2x00dev, 105, bbp);

	FUNC0(rt2x00dev);

	FUNC2(rt2x00dev, 92, 0x02);
	FUNC2(rt2x00dev, 82, 0x82);
	FUNC2(rt2x00dev, 106, 0x05);
	FUNC2(rt2x00dev, 104, 0x92);
	FUNC2(rt2x00dev, 88, 0x90);
	FUNC2(rt2x00dev, 148, 0xc8);
	FUNC2(rt2x00dev, 47, 0x48);
	FUNC2(rt2x00dev, 120, 0x50);

	if (txbf_enabled)
		FUNC2(rt2x00dev, 163, 0xbd);
	else
		FUNC2(rt2x00dev, 163, 0x9d);

	/* SNR mapping */
	FUNC2(rt2x00dev, 142, 6);
	FUNC2(rt2x00dev, 143, 160);
	FUNC2(rt2x00dev, 142, 7);
	FUNC2(rt2x00dev, 143, 161);
	FUNC2(rt2x00dev, 142, 8);
	FUNC2(rt2x00dev, 143, 162);

	/* ADC/DAC control */
	FUNC2(rt2x00dev, 31, 0x08);

	/* RX AGC energy lower bound in log2 */
	FUNC2(rt2x00dev, 68, 0x0b);

	/* FIXME: BBP 105 owerwrite? */
	FUNC2(rt2x00dev, 105, 0x04);

}