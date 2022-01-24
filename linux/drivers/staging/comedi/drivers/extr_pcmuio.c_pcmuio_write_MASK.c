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
struct pcmuio_private {struct pcmuio_asic* asics; } ;
struct pcmuio_asic {int /*<<< orphan*/  pagelock; } ;
struct comedi_device {struct pcmuio_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 scalar_t__ PCMUIO_PAGE_LOCK_REG ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 unsigned long FUNC4 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev, unsigned int val,
			 int asic, int page, int port)
{
	struct pcmuio_private *devpriv = dev->private;
	struct pcmuio_asic *chip = &devpriv->asics[asic];
	unsigned long iobase = FUNC4(dev, asic);
	unsigned long flags;

	FUNC5(&chip->pagelock, flags);
	if (page == 0) {
		/* Port registers are valid for any page */
		FUNC3(val & 0xff, iobase + FUNC2(port + 0));
		FUNC3((val >> 8) & 0xff, iobase + FUNC2(port + 1));
		FUNC3((val >> 16) & 0xff, iobase + FUNC2(port + 2));
	} else {
		FUNC3(FUNC0(page), iobase + PCMUIO_PAGE_LOCK_REG);
		FUNC3(val & 0xff, iobase + FUNC1(0));
		FUNC3((val >> 8) & 0xff, iobase + FUNC1(1));
		FUNC3((val >> 16) & 0xff, iobase + FUNC1(2));
	}
	FUNC6(&chip->pagelock, flags);
}