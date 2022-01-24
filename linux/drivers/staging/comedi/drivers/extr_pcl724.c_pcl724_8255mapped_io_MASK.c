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
 unsigned long I8255_SIZE ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				int dir, int port, int data,
				unsigned long iobase)
{
	int movport = I8255_SIZE * (iobase >> 12);

	iobase &= 0x0fff;

	FUNC1(port + movport, iobase);
	if (dir) {
		FUNC1(data, iobase + 1);
		return 0;
	}
	return FUNC0(iobase + 1);
}