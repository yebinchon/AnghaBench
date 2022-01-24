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
struct pc236_private {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  iobase; } ;
struct comedi_devconfig {int /*<<< orphan*/ * options; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pc236_private* FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct pc236_private *devpriv;
	int ret;

	devpriv = FUNC1(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	ret = FUNC2(dev, it->options[0], 0x4);
	if (ret)
		return ret;

	return FUNC0(dev, dev->iobase, it->options[1], 0);
}