
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int dummy; } ;


 int neponset_pcmcia_ops ;
 int sa1111_pcmcia_add (struct sa1111_dev*,int *,int ) ;
 int sa11xx_drv_pcmcia_add_one ;
 int sa11xx_drv_pcmcia_ops (int *) ;

int pcmcia_neponset_init(struct sa1111_dev *sadev)
{
 sa11xx_drv_pcmcia_ops(&neponset_pcmcia_ops);
 return sa1111_pcmcia_add(sadev, &neponset_pcmcia_ops,
     sa11xx_drv_pcmcia_add_one);
}
