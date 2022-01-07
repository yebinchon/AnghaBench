
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci224_private {int* ao_scan_vals; size_t* ao_scan_order; int daccon; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; struct pci224_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; unsigned int chanlist_len; scalar_t__ scan_begin_src; int scan_begin_arg; } ;
struct TYPE_2__ {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 void* COMBINE (int,unsigned short,int) ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_OVERFLOW ;
 int CR_INVERT ;
 scalar_t__ PCI224_DACCON ;


 unsigned short PCI224_DACCON_FIFOFL_MASK ;

 unsigned short PCI224_DACCON_FIFOINTR_EMPTY ;
 int PCI224_DACCON_FIFOINTR_MASK ;
 unsigned short PCI224_DACCON_TRIG_EXTN ;
 unsigned short PCI224_DACCON_TRIG_EXTP ;
 int PCI224_DACCON_TRIG_MASK ;
 int PCI224_DACCON_TRIG_NONE ;
 unsigned short PCI224_DACCON_TRIG_Z2CT0 ;
 scalar_t__ PCI224_DACDATA ;
 unsigned int PCI224_FIFO_ROOM_EMPTY ;
 unsigned int PCI224_FIFO_ROOM_FULL ;
 unsigned int PCI224_FIFO_ROOM_HALFTOFULL ;
 unsigned int PCI224_FIFO_ROOM_ONETOHALF ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_TIMER ;
 int comedi_buf_read_samples (struct comedi_subdevice*,int*,unsigned int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int comedi_nscans_left (struct comedi_subdevice*,int ) ;
 int dev_err (int ,char*) ;
 unsigned short inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void pci224_ao_handle_fifo(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct pci224_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int num_scans = comedi_nscans_left(s, 0);
 unsigned int room;
 unsigned short dacstat;
 unsigned int i, n;


 dacstat = inw(dev->iobase + PCI224_DACCON);
 switch (dacstat & PCI224_DACCON_FIFOFL_MASK) {
 case 130:
  room = PCI224_FIFO_ROOM_EMPTY;
  if (cmd->stop_src == TRIG_COUNT &&
      s->async->scans_done >= cmd->stop_arg) {

   s->async->events |= COMEDI_CB_EOA;
   comedi_handle_events(dev, s);
   return;
  }
  break;
 case 128:
  room = PCI224_FIFO_ROOM_ONETOHALF;
  break;
 case 129:
  room = PCI224_FIFO_ROOM_HALFTOFULL;
  break;
 default:
  room = PCI224_FIFO_ROOM_FULL;
  break;
 }
 if (room >= PCI224_FIFO_ROOM_ONETOHALF) {

  if (num_scans == 0) {

   dev_err(dev->class_dev, "AO buffer underrun\n");
   s->async->events |= COMEDI_CB_OVERFLOW;
  }
 }

 room /= cmd->chanlist_len;


 if (num_scans > room)
  num_scans = room;


 for (n = 0; n < num_scans; n++) {
  comedi_buf_read_samples(s, &devpriv->ao_scan_vals[0],
     cmd->chanlist_len);
  for (i = 0; i < cmd->chanlist_len; i++) {
   outw(devpriv->ao_scan_vals[devpriv->ao_scan_order[i]],
        dev->iobase + PCI224_DACDATA);
  }
 }
 if (cmd->stop_src == TRIG_COUNT &&
     s->async->scans_done >= cmd->stop_arg) {




  devpriv->daccon = COMBINE(devpriv->daccon,
       PCI224_DACCON_FIFOINTR_EMPTY,
       PCI224_DACCON_FIFOINTR_MASK);
  outw(devpriv->daccon, dev->iobase + PCI224_DACCON);
 }
 if ((devpriv->daccon & PCI224_DACCON_TRIG_MASK) ==
     PCI224_DACCON_TRIG_NONE) {
  unsigned short trig;
  if (cmd->scan_begin_src == TRIG_TIMER) {
   trig = PCI224_DACCON_TRIG_Z2CT0;
  } else {

   if (cmd->scan_begin_arg & CR_INVERT)
    trig = PCI224_DACCON_TRIG_EXTN;
   else
    trig = PCI224_DACCON_TRIG_EXTP;
  }
  devpriv->daccon =
      COMBINE(devpriv->daccon, trig, PCI224_DACCON_TRIG_MASK);
  outw(devpriv->daccon, dev->iobase + PCI224_DACCON);
 }

 comedi_handle_events(dev, s);
}
