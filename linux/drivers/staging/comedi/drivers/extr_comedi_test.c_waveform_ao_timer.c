
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct waveform_private {int ao_last_scan_time; int ao_scan_period; unsigned short* ao_loopbacks; int ao_timer; struct comedi_device* dev; } ;
struct timer_list {int dummy; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct comedi_subdevice* write_subdev; } ;
struct comedi_cmd {unsigned int scan_end_arg; scalar_t__ stop_src; scalar_t__ stop_arg; int * chanlist; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_OVERFLOW ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ TRIG_COUNT ;
 int ao_timer ;
 unsigned int comedi_buf_read_alloc (struct comedi_subdevice*,unsigned int) ;
 int comedi_buf_read_free (struct comedi_subdevice*,unsigned int) ;
 int comedi_buf_read_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int comedi_inc_scan_progress (struct comedi_subdevice*,unsigned int) ;
 unsigned int comedi_nscans_left (struct comedi_subdevice*,int ) ;
 unsigned int comedi_samples_to_bytes (struct comedi_subdevice*,unsigned int) ;
 struct waveform_private* devpriv ;
 int do_div (int,int) ;
 struct waveform_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int ktime_get () ;
 int ktime_to_us (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (unsigned int) ;

__attribute__((used)) static void waveform_ao_timer(struct timer_list *t)
{
 struct waveform_private *devpriv = from_timer(devpriv, t, ao_timer);
 struct comedi_device *dev = devpriv->dev;
 struct comedi_subdevice *s = dev->write_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 u64 now;
 u64 scans_since;
 unsigned int scans_avail = 0;


 now = ktime_to_us(ktime_get());
 scans_since = now - devpriv->ao_last_scan_time;
 do_div(scans_since, devpriv->ao_scan_period);
 if (scans_since) {
  unsigned int i;


  scans_avail = comedi_nscans_left(s, 0);
  if (scans_avail > scans_since)
   scans_avail = scans_since;
  if (scans_avail) {

   if (scans_avail > 1) {
    unsigned int skip_bytes, nbytes;

    skip_bytes =
    comedi_samples_to_bytes(s, cmd->scan_end_arg *
          (scans_avail - 1));
    nbytes = comedi_buf_read_alloc(s, skip_bytes);
    comedi_buf_read_free(s, nbytes);
    comedi_inc_scan_progress(s, nbytes);
    if (nbytes < skip_bytes) {

     async->events |= COMEDI_CB_OVERFLOW;
     goto underrun;
    }
   }

   for (i = 0; i < cmd->scan_end_arg; i++) {
    unsigned int chan = CR_CHAN(cmd->chanlist[i]);
    unsigned short *pd;

    pd = &devpriv->ao_loopbacks[chan];

    if (!comedi_buf_read_samples(s, pd, 1)) {

     async->events |= COMEDI_CB_OVERFLOW;
     goto underrun;
    }
   }

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

  mod_timer(&devpriv->ao_timer,
     jiffies + usecs_to_jiffies(time_inc));
 }

underrun:
 comedi_handle_events(dev, s);
}
