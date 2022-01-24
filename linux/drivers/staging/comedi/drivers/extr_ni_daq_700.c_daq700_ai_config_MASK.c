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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {unsigned long iobase; } ;

/* Variables and functions */
 scalar_t__ ADCLEAR_R ; 
 scalar_t__ ADFIFO_R ; 
 scalar_t__ CMD_R1 ; 
 scalar_t__ CMD_R2 ; 
 scalar_t__ CMD_R3 ; 
 scalar_t__ CMO_R ; 
 scalar_t__ TIC_R ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
			     struct comedi_subdevice *s)
{
	unsigned long iobase = dev->iobase;

	FUNC1(0x80, iobase + CMD_R1);	/* disable scanning, ADC to chan 0 */
	FUNC1(0x00, iobase + CMD_R2);	/* clear all bits */
	FUNC1(0x00, iobase + CMD_R3);	/* set +-10 range */
	FUNC1(0x32, iobase + CMO_R);	/* config counter mode1, out0 to H */
	FUNC1(0x00, iobase + TIC_R);	/* clear counter interrupt */
	FUNC1(0x00, iobase + ADCLEAR_R);	/* clear the ADC FIFO */
	FUNC0(iobase + ADFIFO_R);		/* read 16bit junk from FIFO to clear */
}