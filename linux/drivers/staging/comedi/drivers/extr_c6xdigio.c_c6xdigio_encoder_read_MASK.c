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
 unsigned int C6XDIGIO_DATA_ENCODER ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				 unsigned int chan)
{
	unsigned int cmd = C6XDIGIO_DATA_ENCODER | FUNC0(chan);
	unsigned int val = 0;
	unsigned int bits;

	FUNC2(dev, cmd, 0x00);

	FUNC1(dev, &bits, cmd | (1 << 2), 0x80);
	val |= (bits << 0);

	FUNC1(dev, &bits, cmd | (0 << 2), 0x00);
	val |= (bits << 3);

	FUNC1(dev, &bits, cmd | (1 << 2), 0x80);
	val |= (bits << 6);

	FUNC1(dev, &bits, cmd | (0 << 2), 0x00);
	val |= (bits << 9);

	FUNC1(dev, &bits, cmd | (1 << 2), 0x80);
	val |= (bits << 12);

	FUNC1(dev, &bits, cmd | (0 << 2), 0x00);
	val |= (bits << 15);

	FUNC1(dev, &bits, cmd | (1 << 2), 0x80);
	val |= (bits << 18);

	FUNC1(dev, &bits, cmd | (0 << 2), 0x00);
	val |= (bits << 21);

	FUNC2(dev, 0x00, 0x80);

	return val;
}