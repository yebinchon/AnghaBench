
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int io_lines; TYPE_1__** resource; } ;
struct TYPE_2__ {int end; unsigned int start; int flags; } ;


 int ENODEV ;
 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_8 ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int simple_config_check_notpicky(struct pcmcia_device *p_dev,
     void *priv_data)
{
 static const unsigned int base[5] = { 0x3f8, 0x2f8, 0x3e8, 0x2e8, 0x0 };
 int j;

 if (p_dev->io_lines > 3)
  return -ENODEV;

 p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
 p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;
 p_dev->resource[0]->end = 8;

 for (j = 0; j < 5; j++) {
  p_dev->resource[0]->start = base[j];
  p_dev->io_lines = base[j] ? 16 : 3;
  if (!pcmcia_request_io(p_dev))
   return 0;
 }
 return -ENODEV;
}
