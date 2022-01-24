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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DT2811_ADCSR_CLRERROR ; 
 scalar_t__ DT2811_ADCSR_REG ; 
 scalar_t__ DT2811_ADDATA_HI_REG ; 
 scalar_t__ DT2811_ADDATA_LO_REG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	/* This is the initialization sequence from the users manual */
	FUNC2(FUNC0(0), dev->iobase + DT2811_ADCSR_REG);
	FUNC3(100, 1000);
	FUNC1(dev->iobase + DT2811_ADDATA_LO_REG);
	FUNC1(dev->iobase + DT2811_ADDATA_HI_REG);
	FUNC2(FUNC0(0) | DT2811_ADCSR_CLRERROR,
	     dev->iobase + DT2811_ADCSR_REG);
}