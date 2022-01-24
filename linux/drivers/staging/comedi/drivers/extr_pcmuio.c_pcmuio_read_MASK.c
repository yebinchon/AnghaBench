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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PCMUIO_PAGE_LOCK_REG ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC5 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC8(struct comedi_device *dev,
				int asic, int page, int port)
{
	struct pcmuio_private *devpriv = dev->private;
	struct pcmuio_asic *chip = &devpriv->asics[asic];
	unsigned long iobase = FUNC5(dev, asic);
	unsigned long flags;
	unsigned int val;

	FUNC6(&chip->pagelock, flags);
	if (page == 0) {
		/* Port registers are valid for any page */
		val = FUNC3(iobase + FUNC2(port + 0));
		val |= (FUNC3(iobase + FUNC2(port + 1)) << 8);
		val |= (FUNC3(iobase + FUNC2(port + 2)) << 16);
	} else {
		FUNC4(FUNC0(page), iobase + PCMUIO_PAGE_LOCK_REG);
		val = FUNC3(iobase + FUNC1(0));
		val |= (FUNC3(iobase + FUNC1(1)) << 8);
		val |= (FUNC3(iobase + FUNC1(2)) << 16);
	}
	FUNC7(&chip->pagelock, flags);

	return val;
}