
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_info {int multi; } ;
struct pcmcia_device {TYPE_1__** resource; struct serial_info* priv; } ;
struct TYPE_2__ {int end; } ;


 int EINVAL ;

__attribute__((used)) static int serial_check_for_multi(struct pcmcia_device *p_dev, void *priv_data)
{
 struct serial_info *info = p_dev->priv;

 if (!p_dev->resource[0]->end)
  return -EINVAL;

 if ((!p_dev->resource[1]->end) && (p_dev->resource[0]->end % 8 == 0))
  info->multi = p_dev->resource[0]->end >> 3;

 if ((p_dev->resource[1]->end) && (p_dev->resource[0]->end == 8)
  && (p_dev->resource[1]->end == 8))
  info->multi = 2;

 return 0;
}
