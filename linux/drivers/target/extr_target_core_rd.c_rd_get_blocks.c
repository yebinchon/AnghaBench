
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct rd_dev {int rd_page_count; } ;
typedef unsigned long long sector_t ;


 int PAGE_SIZE ;
 struct rd_dev* RD_DEV (struct se_device*) ;

__attribute__((used)) static sector_t rd_get_blocks(struct se_device *dev)
{
 struct rd_dev *rd_dev = RD_DEV(dev);

 unsigned long long blocks_long = ((rd_dev->rd_page_count * PAGE_SIZE) /
   dev->dev_attrib.block_size) - 1;

 return blocks_long;
}
