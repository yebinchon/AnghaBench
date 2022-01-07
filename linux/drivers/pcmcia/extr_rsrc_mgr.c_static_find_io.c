
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pcmcia_socket {unsigned int io_offset; } ;


 int EINVAL ;

__attribute__((used)) static int static_find_io(struct pcmcia_socket *s, unsigned int attr,
   unsigned int *base, unsigned int num,
   unsigned int align, struct resource **parent)
{
 if (!s->io_offset)
  return -EINVAL;
 *base = s->io_offset | (*base & 0x0fff);
 *parent = ((void*)0);

 return 0;
}
