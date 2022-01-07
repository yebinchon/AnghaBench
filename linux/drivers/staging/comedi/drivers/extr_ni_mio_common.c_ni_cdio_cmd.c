
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int cdo_mite_ring; int routing_tables; } ;
struct comedi_subdevice {int io_bits; unsigned int state; TYPE_1__* async; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;
struct comedi_cmd {int scan_begin_arg; } ;
struct TYPE_2__ {int prealloc_bufsz; int inttrig; struct comedi_cmd cmd; } ;


 int CR_CHAN (int) ;
 int CR_INVERT ;
 int EIO ;
 int NI_DO_SampleClock ;
 int NI_M_CDIO_CMD_REG ;
 unsigned int NI_M_CDO_CMD_RESET ;
 unsigned int NI_M_CDO_CMD_SW_UPDATE ;
 int NI_M_CDO_FIFO_DATA_REG ;
 int NI_M_CDO_MASK_ENA_REG ;
 unsigned int NI_M_CDO_MODE_FIFO_MODE ;
 unsigned int NI_M_CDO_MODE_HALT_ON_ERROR ;
 unsigned int NI_M_CDO_MODE_POLARITY ;
 int NI_M_CDO_MODE_REG ;
 unsigned int NI_M_CDO_MODE_SAMPLE_SRC (int ) ;
 int comedi_bytes_per_scan (struct comedi_subdevice*) ;
 int dev_err (int ,char*) ;
 int ni_cdo_inttrig ;
 int ni_cmd_set_mite_transfer (int ,struct comedi_subdevice*,struct comedi_cmd const*,int) ;
 int ni_get_reg_value (int ,int ,int *) ;
 int ni_request_cdo_mite_channel (struct comedi_device*) ;
 int ni_writel (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static int ni_cdio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_private *devpriv = dev->private;
 const struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int cdo_mode_bits;
 int retval;

 ni_writel(dev, NI_M_CDO_CMD_RESET, NI_M_CDIO_CMD_REG);




 cdo_mode_bits = NI_M_CDO_MODE_FIFO_MODE |
   NI_M_CDO_MODE_HALT_ON_ERROR |
   NI_M_CDO_MODE_SAMPLE_SRC(
    ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
       NI_DO_SampleClock,
       &devpriv->routing_tables));
 if (cmd->scan_begin_arg & CR_INVERT)
  cdo_mode_bits |= NI_M_CDO_MODE_POLARITY;
 ni_writel(dev, cdo_mode_bits, NI_M_CDO_MODE_REG);
 if (s->io_bits) {
  ni_writel(dev, s->state, NI_M_CDO_FIFO_DATA_REG);
  ni_writel(dev, NI_M_CDO_CMD_SW_UPDATE, NI_M_CDIO_CMD_REG);
  ni_writel(dev, s->io_bits, NI_M_CDO_MASK_ENA_REG);
 } else {
  dev_err(dev->class_dev,
   "attempted to run digital output command with no lines configured as outputs\n");
  return -EIO;
 }
 retval = ni_request_cdo_mite_channel(dev);
 if (retval < 0)
  return retval;

 ni_cmd_set_mite_transfer(devpriv->cdo_mite_ring, s, cmd,
     s->async->prealloc_bufsz /
     comedi_bytes_per_scan(s));

 s->async->inttrig = ni_cdo_inttrig;

 return 0;
}
