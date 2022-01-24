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
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROM_CS_BIT ; 
 int /*<<< orphan*/  EPROM_R_BIT ; 
 int /*<<< orphan*/  EPROM_W_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u16 FUNC3(struct net_device *dev, u16 data, int tx_len)
{
	u16 ret = 0;
	int rx_len = 16;

	FUNC2(dev, EPROM_CS_BIT, 1);
	FUNC0(dev);

	while (tx_len--) {
		FUNC2(dev, EPROM_W_BIT,
				       (data >> tx_len) & 0x1);
		FUNC0(dev);
	}

	FUNC2(dev, EPROM_W_BIT, 0);

	while (rx_len--) {
		FUNC0(dev);
		ret |= FUNC1(dev, EPROM_R_BIT) << rx_len;
	}

	FUNC2(dev, EPROM_CS_BIT, 0);
	FUNC0(dev);

	return ret;
}