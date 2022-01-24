#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {TYPE_2__* async; struct file* busy; } ;
struct comedi_file {struct comedi_device* dev; } ;
struct comedi_device {int /*<<< orphan*/  attach_lock; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ cmd; int /*<<< orphan*/  wait_head; } ;

/* Variables and functions */
 int CMDF_WRITE ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*) ; 
 unsigned int FUNC1 (struct comedi_subdevice*) ; 
 unsigned int FUNC2 (struct comedi_subdevice*) ; 
 struct comedi_subdevice* FUNC3 (struct file*) ; 
 struct comedi_subdevice* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC10(struct file *file, poll_table *wait)
{
	__poll_t mask = 0;
	struct comedi_file *cfp = file->private_data;
	struct comedi_device *dev = cfp->dev;
	struct comedi_subdevice *s, *s_read;

	FUNC7(&dev->attach_lock);

	if (!dev->attached) {
		FUNC6(dev->class_dev, "no driver attached\n");
		goto done;
	}

	s = FUNC3(file);
	s_read = s;
	if (s && s->async) {
		FUNC8(file, &s->async->wait_head, wait);
		if (s->busy != file || !FUNC5(s) ||
		    (s->async->cmd.flags & CMDF_WRITE) ||
		    FUNC0(s) > 0)
			mask |= EPOLLIN | EPOLLRDNORM;
	}

	s = FUNC4(file);
	if (s && s->async) {
		unsigned int bps = FUNC2(s);

		if (s != s_read)
			FUNC8(file, &s->async->wait_head, wait);
		if (s->busy != file || !FUNC5(s) ||
		    !(s->async->cmd.flags & CMDF_WRITE) ||
		    FUNC1(s) >= bps)
			mask |= EPOLLOUT | EPOLLWRNORM;
	}

done:
	FUNC9(&dev->attach_lock);
	return mask;
}