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
 scalar_t__ PCL818_MUX_REG ; 
 scalar_t__ PCL818_RANGE_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev,
				     unsigned int chan,
				     unsigned int range)
{
	FUNC0(chan, dev->iobase + PCL818_MUX_REG);
	FUNC0(range, dev->iobase + PCL818_RANGE_REG);
}