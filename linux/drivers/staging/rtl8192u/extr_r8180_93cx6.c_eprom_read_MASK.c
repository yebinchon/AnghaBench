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
struct r8192_priv {scalar_t__ epromtype; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ EPROM_93c56 ; 
 int /*<<< orphan*/  EPROM_CMD ; 
 int EPROM_CMD_NORMAL ; 
 int EPROM_CMD_OPERATING_MODE_SHIFT ; 
 int EPROM_CMD_PROGRAM ; 
 int /*<<< orphan*/  EPROM_DELAY ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,short*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct r8192_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct net_device *dev, u32 addr)
{
	struct r8192_priv *priv = FUNC7(dev);
	short read_cmd[] = {1, 1, 0};
	short addr_str[8];
	int i;
	int addr_len;
	u32 ret;
	int err;

	ret = 0;
	/* enable EPROM programming */
	FUNC9(dev, EPROM_CMD,
		       (EPROM_CMD_PROGRAM << EPROM_CMD_OPERATING_MODE_SHIFT));
	FUNC6(dev);
	FUNC8(EPROM_DELAY);

	if (priv->epromtype == EPROM_93c56) {
		addr_str[7] = addr & 1;
		addr_str[6] = addr & FUNC0(1);
		addr_str[5] = addr & FUNC0(2);
		addr_str[4] = addr & FUNC0(3);
		addr_str[3] = addr & FUNC0(4);
		addr_str[2] = addr & FUNC0(5);
		addr_str[1] = addr & FUNC0(6);
		addr_str[0] = addr & FUNC0(7);
		addr_len = 8;
	} else {
		addr_str[5] = addr & 1;
		addr_str[4] = addr & FUNC0(1);
		addr_str[3] = addr & FUNC0(2);
		addr_str[2] = addr & FUNC0(3);
		addr_str[1] = addr & FUNC0(4);
		addr_str[0] = addr & FUNC0(5);
		addr_len = 6;
	}
	FUNC2(dev, 1);
	FUNC1(dev);
	FUNC4(dev, read_cmd, 3);
	FUNC4(dev, addr_str, addr_len);

	/*
	 * keep chip pin D to low state while reading.
	 * I'm unsure if it is necessary, but anyway shouldn't hurt
	 */
	FUNC5(dev, 0);

	for (i = 0; i < 16; i++) {
		/* eeprom needs a clk cycle between writing opcode&adr
		 * and reading data. (eeprom outs a dummy 0)
		 */
		FUNC1(dev);
		err = FUNC3(dev);
		if (err < 0)
			return err;

		ret |= err << (15 - i);
	}

	FUNC2(dev, 0);
	FUNC1(dev);

	/* disable EPROM programming */
	FUNC9(dev, EPROM_CMD,
		       (EPROM_CMD_NORMAL << EPROM_CMD_OPERATING_MODE_SHIFT));
	return ret;
}