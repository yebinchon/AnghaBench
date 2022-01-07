
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int io_lines; TYPE_1__** resource; } ;
struct TYPE_2__ {int end; int start; int flags; } ;


 int EINVAL ;
 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int aha152x_config_check(struct pcmcia_device *p_dev, void *priv_data)
{
 p_dev->io_lines = 10;


 if ((p_dev->resource[0]->end < 0x20) &&
  (p_dev->resource[1]->end >= 0x20))
  p_dev->resource[0]->start = p_dev->resource[1]->start;

 if (p_dev->resource[0]->start >= 0xffff)
  return -EINVAL;

 p_dev->resource[1]->start = p_dev->resource[1]->end = 0;
 p_dev->resource[0]->end = 0x20;
 p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
 p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;

 return pcmcia_request_io(p_dev);
}
