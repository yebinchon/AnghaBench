
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {unsigned int counter_index; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;


 int GI_SAVE_TRACE ;
 int NITIO_CMD_REG (unsigned int) ;
 int NITIO_SW_SAVE_REG (unsigned int) ;
 unsigned int ni_tio_read (struct ni_gpct*,int ) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;

__attribute__((used)) static unsigned int ni_tio_read_sw_save_reg(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct ni_gpct *counter = s->private;
 unsigned int cidx = counter->counter_index;
 unsigned int val;

 ni_tio_set_bits(counter, NITIO_CMD_REG(cidx), GI_SAVE_TRACE, 0);
 ni_tio_set_bits(counter, NITIO_CMD_REG(cidx),
   GI_SAVE_TRACE, GI_SAVE_TRACE);
 val = ni_tio_read(counter, NITIO_SW_SAVE_REG(cidx));
 if (val != ni_tio_read(counter, NITIO_SW_SAVE_REG(cidx)))
  val = ni_tio_read(counter, NITIO_SW_SAVE_REG(cidx));

 return val;
}
