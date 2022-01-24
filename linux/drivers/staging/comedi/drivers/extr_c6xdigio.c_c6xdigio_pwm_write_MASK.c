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
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int C6XDIGIO_DATA_PWM ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
			       unsigned int chan, unsigned int val)
{
	unsigned int cmd = C6XDIGIO_DATA_PWM | FUNC0(chan);
	unsigned int bits;

	if (val > 498)
		val = 498;
	if (val < 2)
		val = 2;

	bits = (val >> 0) & 0x03;
	FUNC1(dev, cmd | bits | (0 << 2), 0x00);
	bits = (val >> 2) & 0x03;
	FUNC1(dev, cmd | bits | (1 << 2), 0x80);
	bits = (val >> 4) & 0x03;
	FUNC1(dev, cmd | bits | (0 << 2), 0x00);
	bits = (val >> 6) & 0x03;
	FUNC1(dev, cmd | bits | (1 << 2), 0x80);
	bits = (val >> 8) & 0x03;
	FUNC1(dev, cmd | bits | (0 << 2), 0x00);

	FUNC1(dev, 0x00, 0x80);
}