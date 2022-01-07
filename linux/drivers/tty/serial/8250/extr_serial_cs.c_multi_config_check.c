
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; } ;
struct TYPE_2__ {int end; int flags; } ;


 int EINVAL ;
 int ENODEV ;
 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_8 ;
 scalar_t__ pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int multi_config_check(struct pcmcia_device *p_dev, void *priv_data)
{
 int *multi = priv_data;

 if (p_dev->resource[1]->end)
  return -EINVAL;





 if (p_dev->resource[0]->end <= 8)
  return -EINVAL;

 p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
 p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;
 p_dev->resource[0]->end = *multi * 8;

 if (pcmcia_request_io(p_dev))
  return -ENODEV;
 return 0;
}
