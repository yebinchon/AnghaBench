
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; struct comedi_async* async; } ;
struct comedi_cmd {int chanlist_len; } ;
struct comedi_async {unsigned int scan_progress; unsigned int scans_done; int events; int cur_chan; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOS ;
 int SDF_PACKED ;
 unsigned int UINT_MAX ;
 unsigned int comedi_bytes_per_scan (struct comedi_subdevice*) ;
 scalar_t__ comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;

void comedi_inc_scan_progress(struct comedi_subdevice *s,
         unsigned int num_bytes)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int scan_length = comedi_bytes_per_scan(s);


 if (!(s->subdev_flags & SDF_PACKED)) {
  async->cur_chan += comedi_bytes_to_samples(s, num_bytes);
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
