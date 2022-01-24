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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROM_CMD ; 
 int EPROM_CS_BIT ; 
 int /*<<< orphan*/  EPROM_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, short bit)
{
	u8 cmdreg;
	int err;

	err = FUNC1(dev, EPROM_CMD, &cmdreg);
	if (err)
		return;
	if (bit)
		/* enable EPROM */
		FUNC3(dev, EPROM_CMD, cmdreg | EPROM_CS_BIT);
	else
		/* disable EPROM */
		FUNC3(dev, EPROM_CMD, cmdreg & ~EPROM_CS_BIT);

	FUNC0(dev);
	FUNC2(EPROM_DELAY);
}