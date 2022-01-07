
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static void pcmcia_put_dev(struct pcmcia_device *p_dev)
{
 if (p_dev)
  put_device(&p_dev->dev);
}
