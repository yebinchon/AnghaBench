
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int READ_PORT ;
 int WRITE_PORT ;
 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int ni6501_port_command (struct comedi_device*,int ,int,int*) ;

__attribute__((used)) static int ni6501_dio_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int mask;
 int ret;
 u8 port;
 u8 bitmap;

 mask = comedi_dio_update_state(s, data);

 for (port = 0; port < 3; port++) {
  if (mask & (0xFF << port * 8)) {
   bitmap = (s->state >> port * 8) & 0xFF;
   ret = ni6501_port_command(dev, WRITE_PORT,
        port, &bitmap);
   if (ret)
    return ret;
  }
 }

 data[1] = 0;

 for (port = 0; port < 3; port++) {
  ret = ni6501_port_command(dev, READ_PORT, port, &bitmap);
  if (ret)
   return ret;
  data[1] |= bitmap << port * 8;
 }

 return insn->n;
}
