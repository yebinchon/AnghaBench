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
typedef  int u64 ;
struct waveform_private {int ao_last_scan_time; int ao_scan_period; unsigned short* ao_loopbacks; int /*<<< orphan*/  ao_timer; struct comedi_device* dev; } ;
struct timer_list {int dummy; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct comedi_subdevice* write_subdev; } ;
struct comedi_cmd {unsigned int scan_end_arg; scalar_t__ stop_src; scalar_t__ stop_arg; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  ao_timer ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*,unsigned short*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC6 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct comedi_subdevice*,unsigned int) ; 
 struct waveform_private* devpriv ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 struct waveform_private* FUNC9 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (unsigned int) ; 

__attribute__((used)) static void FUNC14(struct timer_list *t)
{
	struct waveform_private *devpriv = FUNC9(devpriv, t, ao_timer);
	struct comedi_device *dev = devpriv->dev;
	struct comedi_subdevice *s = dev->write_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	u64 now;
	u64 scans_since;
	unsigned int scans_avail = 0;

	/* determine number of scan periods since last time */
	now = FUNC11(FUNC10());
	scans_since = now - devpriv->ao_last_scan_time;
	FUNC8(scans_since, devpriv->ao_scan_period);
	if (scans_since) {
		unsigned int i;

		/* determine scans in buffer, limit to scans to do this time */
		scans_avail = FUNC6(s, 0);
		if (scans_avail > scans_since)
			scans_avail = scans_since;
		if (scans_avail) {
			/* skip all but the last scan to save processing time */
			if (scans_avail > 1) {
				unsigned int skip_bytes, nbytes;

				skip_bytes =
				FUNC7(s, cmd->scan_end_arg *
							   (scans_avail - 1));
				nbytes = FUNC1(s, skip_bytes);
				FUNC2(s, nbytes);
				FUNC5(s, nbytes);
				if (nbytes < skip_bytes) {
					/* unexpected underrun! (cancelled?) */
					async->events |= COMEDI_CB_OVERFLOW;
					goto underrun;
				}
			}
			/* output the last scan */
			for (i = 0; i < cmd->scan_end_arg; i++) {
				unsigned int chan = FUNC0(cmd->chanlist[i]);
				unsigned short *pd;

				pd = &devpriv->ao_loopbacks[chan];

				if (!FUNC3(s, pd, 1)) {
					/* unexpected underrun! (cancelled?) */
					async->events |= COMEDI_CB_OVERFLOW;
					goto underrun;
				}
			}
			/* advance time of last scan */
			devpriv->ao_last_scan_time +=
				(u64)scans_avail * devpriv->ao_scan_period;
		}
	}
	if (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg) {
		async->events |= COMEDI_CB_EOA;
	} else if (scans_avail < scans_since) {
		async->events |= COMEDI_CB_OVERFLOW;
	} else {
		unsigned int time_inc = devpriv->ao_last_scan_time +
					devpriv->ao_scan_period - now;

		FUNC12(&devpriv->ao_timer,
			  jiffies + FUNC13(time_inc));
	}

underrun:
	FUNC4(dev, s);
}