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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int Z8536_CFG_CTRL_CT1E ; 
 unsigned int Z8536_CFG_CTRL_CT2E ; 
 unsigned int Z8536_CFG_CTRL_PCE_CT3E ; 
 int /*<<< orphan*/  Z8536_CFG_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
				  unsigned int chan, bool enable)
{
	unsigned int bit;
	unsigned int cfg;

	if (chan == 0)
		bit = Z8536_CFG_CTRL_CT1E;
	else if (chan == 1)
		bit = Z8536_CFG_CTRL_CT2E;
	else
		bit = Z8536_CFG_CTRL_PCE_CT3E;

	cfg = FUNC1(dev, Z8536_CFG_CTRL_REG);
	if (enable) {
		cfg |= bit;
	} else {
		cfg &= ~bit;
		FUNC2(dev, 0x00, FUNC0(chan));
	}
	FUNC2(dev, cfg, Z8536_CFG_CTRL_REG);
}