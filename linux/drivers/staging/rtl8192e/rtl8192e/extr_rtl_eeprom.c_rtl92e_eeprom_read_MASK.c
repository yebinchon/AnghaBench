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
 scalar_t__ EEPROM_93C56 ; 
 int /*<<< orphan*/  EPROM_CMD ; 
 int EPROM_CMD_NORMAL ; 
 int EPROM_CMD_OPERATING_MODE_SHIFT ; 
 int EPROM_CMD_PROGRAM ; 
 int /*<<< orphan*/  EPROM_DELAY ; 
 int FUNC0 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

u32 FUNC4(struct net_device *dev, u32 addr)
{
	struct r8192_priv *priv = FUNC2(dev);
	u32 ret = 0;

	FUNC1(dev, EPROM_CMD,
		      (EPROM_CMD_PROGRAM << EPROM_CMD_OPERATING_MODE_SHIFT));
	FUNC3(EPROM_DELAY);

	/* EEPROM is configured as x16 */
	if (priv->epromtype == EEPROM_93C56)
		ret = FUNC0(dev, (addr & 0xFF) | (0x6 << 8), 11);
	else
		ret = FUNC0(dev, (addr & 0x3F) | (0x6 << 6), 9);

	FUNC1(dev, EPROM_CMD,
		      (EPROM_CMD_NORMAL<<EPROM_CMD_OPERATING_MODE_SHIFT));
	return ret;
}