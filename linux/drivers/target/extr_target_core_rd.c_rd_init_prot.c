
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; int pi_prot_type; } ;
struct se_device {TYPE_1__ dev_attrib; int prot_length; } ;
struct rd_dev {int dummy; } ;


 struct rd_dev* RD_DEV (struct se_device*) ;
 int rd_build_prot_space (struct rd_dev*,int ,int ) ;

__attribute__((used)) static int rd_init_prot(struct se_device *dev)
{
 struct rd_dev *rd_dev = RD_DEV(dev);

        if (!dev->dev_attrib.pi_prot_type)
  return 0;

 return rd_build_prot_space(rd_dev, dev->prot_length,
       dev->dev_attrib.block_size);
}
