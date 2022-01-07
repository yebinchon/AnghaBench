
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int mite_channel_lock; scalar_t__ cdo_mite_chan; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; struct ni_private* private; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_OVERFLOW ;
 size_t NI_DIO_SUBDEV ;
 int NI_M_CDIO_CMD_REG ;
 unsigned int NI_M_CDIO_STATUS_CDO_ERROR ;
 unsigned int NI_M_CDIO_STATUS_CDO_FIFO_EMPTY ;
 int NI_M_CDIO_STATUS_REG ;
 int NI_M_CDO_CMD_ERR_INT_CONFIRM ;
 int NI_M_CDO_CMD_F_E_INT_ENA_CLR ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int mite_ack_linkc (scalar_t__,struct comedi_subdevice*,int) ;
 unsigned int ni_readl (struct comedi_device*,int ) ;
 int ni_writel (struct comedi_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void handle_cdio_interrupt(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 unsigned int cdio_status;
 struct comedi_subdevice *s = &dev->subdevices[NI_DIO_SUBDEV];
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->cdo_mite_chan)
  mite_ack_linkc(devpriv->cdo_mite_chan, s, 1);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);

 cdio_status = ni_readl(dev, NI_M_CDIO_STATUS_REG);
 if (cdio_status & NI_M_CDIO_STATUS_CDO_ERROR) {

  ni_writel(dev, NI_M_CDO_CMD_ERR_INT_CONFIRM,
     NI_M_CDIO_CMD_REG);
  s->async->events |= COMEDI_CB_OVERFLOW;
 }
 if (cdio_status & NI_M_CDIO_STATUS_CDO_FIFO_EMPTY) {
  ni_writel(dev, NI_M_CDO_CMD_F_E_INT_ENA_CLR,
     NI_M_CDIO_CMD_REG);

 }
 comedi_handle_events(dev, s);
}
