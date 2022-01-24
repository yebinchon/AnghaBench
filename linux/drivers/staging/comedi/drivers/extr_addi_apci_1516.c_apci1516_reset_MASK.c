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
struct comedi_device {scalar_t__ iobase; struct apci1516_private* private; struct apci1516_boardinfo* board_ptr; } ;
struct apci1516_private {int /*<<< orphan*/  wdog_iobase; } ;
struct apci1516_boardinfo {int /*<<< orphan*/  has_wdog; } ;

/* Variables and functions */
 scalar_t__ APCI1516_DO_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev)
{
	const struct apci1516_boardinfo *board = dev->board_ptr;
	struct apci1516_private *devpriv = dev->private;

	if (!board->has_wdog)
		return 0;

	FUNC1(0x0, dev->iobase + APCI1516_DO_REG);

	FUNC0(devpriv->wdog_iobase);

	return 0;
}