
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; } ;
struct TYPE_2__ {int end; int start; int flags; } ;


 int ENODEV ;
 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_8 ;
 scalar_t__ pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int multi_config_check_notpicky(struct pcmcia_device *p_dev,
           void *priv_data)
{
 int *base2 = priv_data;

 if (!p_dev->resource[0]->end || !p_dev->resource[1]->end ||
  p_dev->resource[0]->start + 8 != p_dev->resource[1]->start)
  return -ENODEV;

 p_dev->resource[0]->end = p_dev->resource[1]->end = 8;
 p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
 p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;

 if (pcmcia_request_io(p_dev))
  return -ENODEV;

 *base2 = p_dev->resource[0]->start + 8;
 return 0;
}
