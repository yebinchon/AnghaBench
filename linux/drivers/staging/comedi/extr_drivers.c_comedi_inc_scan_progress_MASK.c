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
struct comedi_subdevice {int subdev_flags; struct comedi_async* async; } ;
struct comedi_cmd {int /*<<< orphan*/  chanlist_len; } ;
struct comedi_async {unsigned int scan_progress; unsigned int scans_done; int /*<<< orphan*/  events; int /*<<< orphan*/  cur_chan; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOS ; 
 int SDF_PACKED ; 
 unsigned int UINT_MAX ; 
 unsigned int FUNC0 (struct comedi_subdevice*) ; 
 scalar_t__ FUNC1 (struct comedi_subdevice*,unsigned int) ; 

void FUNC2(struct comedi_subdevice *s,
			      unsigned int num_bytes)
{
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int scan_length = FUNC0(s);

	/* track the 'cur_chan' for non-SDF_PACKED subdevices */
	if (!(s->subdev_flags & SDF_PACKED)) {
		async->cur_chan += FUNC1(s, num_bytes);
		async->cur_chan %= cmd->chanlist_len;
	}

	async->scan_progress += num_bytes;
	if (async->scan_progress >= scan_length) {
		unsigned int nscans = async->scan_progress / scan_length;

		if (async->scans_done < (UINT_MAX - nscans))
			async->scans_done += nscans;
		else
			async->scans_done = UINT_MAX;

		async->scan_progress %= scan_length;
		async->events |= COMEDI_CB_EOS;
	}
}