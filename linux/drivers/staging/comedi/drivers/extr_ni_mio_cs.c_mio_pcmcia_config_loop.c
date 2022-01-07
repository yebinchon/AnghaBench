
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; } ;
struct TYPE_2__ {int start; int flags; } ;


 int ENODEV ;
 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_16 ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int mio_pcmcia_config_loop(struct pcmcia_device *p_dev, void *priv_data)
{
 int base, ret;

 p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
 p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_16;

 for (base = 0x000; base < 0x400; base += 0x20) {
  p_dev->resource[0]->start = base;
  ret = pcmcia_request_io(p_dev);
  if (!ret)
   return 0;
 }
 return -ENODEV;
}
