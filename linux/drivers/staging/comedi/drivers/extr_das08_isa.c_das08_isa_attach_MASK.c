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
struct das08_private_struct {int dummy; } ;
struct das08_board_struct {int /*<<< orphan*/  iosize; } ;
struct comedi_device {int /*<<< orphan*/  iobase; struct das08_board_struct* board_ptr; } ;
struct comedi_devconfig {int /*<<< orphan*/ * options; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct das08_private_struct* FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			    struct comedi_devconfig *it)
{
	const struct das08_board_struct *board = dev->board_ptr;
	struct das08_private_struct *devpriv;
	int ret;

	devpriv = FUNC0(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	ret = FUNC1(dev, it->options[0], board->iosize);
	if (ret)
		return ret;

	return FUNC2(dev, dev->iobase);
}