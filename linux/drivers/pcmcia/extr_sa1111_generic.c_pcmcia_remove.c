
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa1111_pcmcia_socket {int soc; struct sa1111_pcmcia_socket* next; } ;
struct TYPE_2__ {int start; } ;
struct sa1111_dev {TYPE_1__ res; int dev; } ;


 struct sa1111_pcmcia_socket* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct sa1111_pcmcia_socket*) ;
 int release_mem_region (int ,int) ;
 int sa1111_disable_device (struct sa1111_dev*) ;
 int soc_pcmcia_remove_one (int *) ;

__attribute__((used)) static int pcmcia_remove(struct sa1111_dev *dev)
{
 struct sa1111_pcmcia_socket *next, *s = dev_get_drvdata(&dev->dev);

 dev_set_drvdata(&dev->dev, ((void*)0));

 for (; s; s = next) {
  next = s->next;
  soc_pcmcia_remove_one(&s->soc);
  kfree(s);
 }

 release_mem_region(dev->res.start, 512);
 sa1111_disable_device(dev);
 return 0;
}
