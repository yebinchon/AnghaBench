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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ DAS800_LSB ; 
 scalar_t__ DAS800_MSB ; 
 unsigned int FUNC0 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC1(struct comedi_device *dev)
{
	unsigned int lsb = FUNC0(dev->iobase + DAS800_LSB);
	unsigned int msb = FUNC0(dev->iobase + DAS800_MSB);

	return (msb << 8) | lsb;
}