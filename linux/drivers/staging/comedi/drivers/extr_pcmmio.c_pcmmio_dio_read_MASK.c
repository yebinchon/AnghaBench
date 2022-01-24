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
struct pcmmio_private {int /*<<< orphan*/  pagelock; } ;
struct comedi_device {unsigned long iobase; struct pcmmio_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PCMMIO_PAGE_LOCK_REG ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC7(struct comedi_device *dev,
				    int page, int port)
{
	struct pcmmio_private *devpriv = dev->private;
	unsigned long iobase = dev->iobase;
	unsigned long flags;
	unsigned int val;

	FUNC5(&devpriv->pagelock, flags);
	if (page == 0) {
		/* Port registers are valid for any page */
		val = FUNC3(iobase + FUNC2(port + 0));
		val |= (FUNC3(iobase + FUNC2(port + 1)) << 8);
		val |= (FUNC3(iobase + FUNC2(port + 2)) << 16);
	} else {
		FUNC4(FUNC0(page), iobase + PCMMIO_PAGE_LOCK_REG);
		val = FUNC3(iobase + FUNC1(0));
		val |= (FUNC3(iobase + FUNC1(1)) << 8);
		val |= (FUNC3(iobase + FUNC1(2)) << 16);
	}
	FUNC6(&devpriv->pagelock, flags);

	return val;
}