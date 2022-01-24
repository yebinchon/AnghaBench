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
 unsigned int Z8536_CMD_CLR_IP_IUS ; 
 unsigned int Z8536_STAT_IE_IP ; 
 unsigned int FUNC0 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static bool FUNC2(struct comedi_device *dev,
			     unsigned int reg)
{
	unsigned int val;

	val = FUNC0(dev, reg);
	if ((val & Z8536_STAT_IE_IP) == Z8536_STAT_IE_IP) {
		val &= 0x0f;			/* preserve any write bits */
		val |= Z8536_CMD_CLR_IP_IUS;
		FUNC1(dev, val, reg);

		return true;
	}
	return false;
}