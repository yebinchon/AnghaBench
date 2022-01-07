
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int dev; } ;


 int lubbock_pcmcia_ops ;
 int pxa2xx_configure_sockets (int *,int *) ;
 int pxa2xx_drv_pcmcia_add_one ;
 int pxa2xx_drv_pcmcia_ops (int *) ;
 int sa1111_pcmcia_add (struct sa1111_dev*,int *,int ) ;

int pcmcia_lubbock_init(struct sa1111_dev *sadev)
{
 pxa2xx_drv_pcmcia_ops(&lubbock_pcmcia_ops);
 pxa2xx_configure_sockets(&sadev->dev, &lubbock_pcmcia_ops);
 return sa1111_pcmcia_add(sadev, &lubbock_pcmcia_ops,
     pxa2xx_drv_pcmcia_add_one);
}
