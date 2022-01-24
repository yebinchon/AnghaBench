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
struct vmk80xx_private {scalar_t__ model; int /*<<< orphan*/  limit_sem; } ;
struct vmk80xx_board {scalar_t__ model; int /*<<< orphan*/  name; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  board_name; struct vmk80xx_board const* board_ptr; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct vmk80xx_board*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ VMK8055_MODEL ; 
 struct vmk80xx_private* FUNC1 (struct comedi_device*,int) ; 
 struct usb_interface* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,struct vmk80xx_private*) ; 
 int FUNC5 (struct comedi_device*) ; 
 struct vmk80xx_board* vmk80xx_boardinfo ; 
 int FUNC6 (struct comedi_device*) ; 
 int FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			       unsigned long context)
{
	struct usb_interface *intf = FUNC2(dev);
	const struct vmk80xx_board *board = NULL;
	struct vmk80xx_private *devpriv;
	int ret;

	if (context < FUNC0(vmk80xx_boardinfo))
		board = &vmk80xx_boardinfo[context];
	if (!board)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	devpriv = FUNC1(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	devpriv->model = board->model;

	FUNC3(&devpriv->limit_sem, 8);

	ret = FUNC6(dev);
	if (ret)
		return ret;

	ret = FUNC5(dev);
	if (ret)
		return ret;

	FUNC4(intf, devpriv);

	if (devpriv->model == VMK8055_MODEL)
		FUNC8(dev);

	return FUNC7(dev);
}