
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vlynq_mapping {int size; int offset; } ;
struct vlynq_device {TYPE_2__* remote; int enabled; } ;
struct TYPE_4__ {TYPE_1__* rx_mapping; int tx_offset; } ;
struct TYPE_3__ {int size; int offset; } ;


 int ENXIO ;
 int writel (int ,int *) ;

int vlynq_set_remote_mapping(struct vlynq_device *dev, u32 tx_offset,
        struct vlynq_mapping *mapping)
{
 int i;

 if (!dev->enabled)
  return -ENXIO;

 writel(tx_offset, &dev->remote->tx_offset);
 for (i = 0; i < 4; i++) {
  writel(mapping[i].offset, &dev->remote->rx_mapping[i].offset);
  writel(mapping[i].size, &dev->remote->rx_mapping[i].size);
 }
 return 0;
}
