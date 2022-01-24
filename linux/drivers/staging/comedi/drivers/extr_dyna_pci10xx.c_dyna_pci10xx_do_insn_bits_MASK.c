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
struct dyna_pci10xx_private {int /*<<< orphan*/  mutex; int /*<<< orphan*/  BADR3; } ;
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct dyna_pci10xx_private* private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_insn *insn,
				     unsigned int *data)
{
	struct dyna_pci10xx_private *devpriv = dev->private;

	FUNC1(&devpriv->mutex);
	if (FUNC0(s, data)) {
		FUNC4();
		FUNC3(s->state, devpriv->BADR3);
		FUNC5(10, 100);
	}

	data[1] = s->state;
	FUNC2(&devpriv->mutex);

	return insn->n;
}