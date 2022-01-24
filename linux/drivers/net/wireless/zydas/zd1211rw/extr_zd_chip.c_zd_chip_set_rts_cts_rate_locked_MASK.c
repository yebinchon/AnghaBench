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
typedef  int u32 ;
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_RTS_CTS_RATE ; 
 int RTSCTS_SH_CTS_MOD_TYPE ; 
 int RTSCTS_SH_CTS_PMB_TYPE ; 
 int RTSCTS_SH_CTS_RATE ; 
 int RTSCTS_SH_RTS_MOD_TYPE ; 
 int RTSCTS_SH_RTS_PMB_TYPE ; 
 int RTSCTS_SH_RTS_RATE ; 
 int /*<<< orphan*/  ZD_CCK_RATE_11M ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZD_RX_CCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_chip*) ; 
 int FUNC3 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct zd_chip *chip,
				    int preamble)
{
	u32 value = 0;

	FUNC1(FUNC2(chip), "preamble=%x\n", preamble);
	value |= preamble << RTSCTS_SH_RTS_PMB_TYPE;
	value |= preamble << RTSCTS_SH_CTS_PMB_TYPE;

	/* We always send 11M RTS/self-CTS messages, like the vendor driver. */
	value |= FUNC0(ZD_CCK_RATE_11M) << RTSCTS_SH_RTS_RATE;
	value |= ZD_RX_CCK << RTSCTS_SH_RTS_MOD_TYPE;
	value |= FUNC0(ZD_CCK_RATE_11M) << RTSCTS_SH_CTS_RATE;
	value |= ZD_RX_CCK << RTSCTS_SH_CTS_MOD_TYPE;

	return FUNC3(chip, value, CR_RTS_CTS_RATE);
}