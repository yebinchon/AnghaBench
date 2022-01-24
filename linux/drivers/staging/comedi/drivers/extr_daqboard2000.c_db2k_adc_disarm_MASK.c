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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 int DB2K_ACQ_CONTROL_ADC_PACER_DISABLE ; 
 int DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST ; 
 scalar_t__ DB2K_REG_ACQ_CONTROL ; 
 scalar_t__ DB2K_REG_TRIG_CONTROL ; 
 int DB2K_TRIG_CONTROL_DISABLE ; 
 int DB2K_TRIG_CONTROL_TYPE_ANALOG ; 
 int DB2K_TRIG_CONTROL_TYPE_TTL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	/* Disable hardware triggers */
	FUNC1(2);
	FUNC2(DB2K_TRIG_CONTROL_TYPE_ANALOG | DB2K_TRIG_CONTROL_DISABLE,
	       dev->mmio + DB2K_REG_TRIG_CONTROL);
	FUNC1(2);
	FUNC2(DB2K_TRIG_CONTROL_TYPE_TTL | DB2K_TRIG_CONTROL_DISABLE,
	       dev->mmio + DB2K_REG_TRIG_CONTROL);

	/* Stop the scan list FIFO from loading the configuration pipe */
	FUNC1(2);
	FUNC2(DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST,
	       dev->mmio + DB2K_REG_ACQ_CONTROL);

	/* Stop the pacer clock */
	FUNC1(2);
	FUNC2(DB2K_ACQ_CONTROL_ADC_PACER_DISABLE,
	       dev->mmio + DB2K_REG_ACQ_CONTROL);

	/* Stop the input dma (abort channel 1) */
	FUNC0(dev);
}