
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; int priv; } ;
struct TYPE_2__ {int start; } ;


 int FDOMAIN_REGION_SIZE ;
 int fdomain_destroy (int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void fdomain_remove(struct pcmcia_device *link)
{
 fdomain_destroy(link->priv);
 release_region(link->resource[0]->start, FDOMAIN_REGION_SIZE);
 pcmcia_disable_device(link);
}
