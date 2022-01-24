#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dt2814_private {int /*<<< orphan*/  ntrig; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct dt2814_private* private; } ;
struct comedi_cmd {int /*<<< orphan*/  stop_arg; int /*<<< orphan*/ * chanlist; int /*<<< orphan*/  flags; int /*<<< orphan*/  scan_begin_arg; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DT2814_CSR ; 
 int DT2814_ENB ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct dt2814_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	int chan;
	int trigvar;

	trigvar = FUNC1(&cmd->scan_begin_arg, cmd->flags);

	chan = FUNC0(cmd->chanlist[0]);

	devpriv->ntrig = cmd->stop_arg;
	FUNC2(chan | DT2814_ENB | (trigvar << 5), dev->iobase + DT2814_CSR);

	return 0;
}