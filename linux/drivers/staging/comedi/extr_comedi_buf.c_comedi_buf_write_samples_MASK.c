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
struct comedi_subdevice {TYPE_2__* async; TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  events; } ;
struct TYPE_3__ {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_BLOCK ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,void const*,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*) ; 
 unsigned int FUNC4 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

unsigned int FUNC8(struct comedi_subdevice *s,
				      const void *data, unsigned int nsamples)
{
	unsigned int max_samples;
	unsigned int nbytes;

	/*
	 * Make sure there is enough room in the buffer for all the samples.
	 * If not, clamp the nsamples to the number that will fit, flag the
	 * buffer overrun and add the samples that fit.
	 */
	max_samples = FUNC4(s, FUNC3(s));
	if (nsamples > max_samples) {
		FUNC7(s->device->class_dev, "buffer overrun\n");
		s->async->events |= COMEDI_CB_OVERFLOW;
		nsamples = max_samples;
	}

	if (nsamples == 0)
		return 0;

	nbytes = FUNC1(s,
					FUNC6(s, nsamples));
	FUNC0(s, data, nbytes);
	FUNC2(s, nbytes);
	FUNC5(s, nbytes);
	s->async->events |= COMEDI_CB_BLOCK;

	return nbytes;
}