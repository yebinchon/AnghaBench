
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int irq; TYPE_1__** resource; } ;
struct TYPE_2__ {int start; } ;


 int b1pcmcia_delcard (int ,int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void avmcs_release(struct pcmcia_device *link)
{
 b1pcmcia_delcard(link->resource[0]->start, link->irq);
 pcmcia_disable_device(link);
}
