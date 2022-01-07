
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; int flags; scalar_t__ parent; } ;
struct pcmcia_socket {TYPE_1__* io; int dev; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_2__ {scalar_t__ InUse; struct resource* res; } ;


 int IORESOURCE_IO ;
 int MAX_IO_WIN ;
 int dev_dbg (int *,char*,struct resource*) ;
 int kfree (struct resource*) ;
 int release_resource (struct resource*) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static void release_io_space(struct pcmcia_socket *s, struct resource *res)
{
 resource_size_t num = resource_size(res);
 int i;

 dev_dbg(&s->dev, "release_io_space for %pR\n", res);

 for (i = 0; i < MAX_IO_WIN; i++) {
  if (!s->io[i].res)
   continue;
  if ((s->io[i].res->start <= res->start) &&
      (s->io[i].res->end >= res->end)) {
   s->io[i].InUse -= num;
   if (res->parent)
    release_resource(res);
   res->start = res->end = 0;
   res->flags = IORESOURCE_IO;

   if (s->io[i].InUse == 0) {
    release_resource(s->io[i].res);
    kfree(s->io[i].res);
    s->io[i].res = ((void*)0);
   }
  }
 }
}
