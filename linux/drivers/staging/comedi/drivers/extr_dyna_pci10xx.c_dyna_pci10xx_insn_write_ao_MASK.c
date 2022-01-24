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
struct dyna_pci10xx_private {int /*<<< orphan*/  mutex; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int /*<<< orphan*/  iobase; struct dyna_pci10xx_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      struct comedi_insn *insn,
				      unsigned int *data)
{
	struct dyna_pci10xx_private *devpriv = dev->private;
	int n;

	FUNC0(&devpriv->mutex);
	for (n = 0; n < insn->n; n++) {
		FUNC3();
		/* trigger conversion and write data */
		FUNC2(data[n], dev->iobase);
		FUNC4(10, 20);
	}
	FUNC1(&devpriv->mutex);
	return n;
}