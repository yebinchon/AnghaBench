
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; int dev; } ;


 int aha152x_release_cs (struct pcmcia_device*) ;
 int dev_dbg (int *,char*) ;
 int kfree (int ) ;

__attribute__((used)) static void aha152x_detach(struct pcmcia_device *link)
{
    dev_dbg(&link->dev, "aha152x_detach\n");

    aha152x_release_cs(link);


    kfree(link->priv);
}
