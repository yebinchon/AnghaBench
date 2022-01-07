
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_loop_get {size_t len; unsigned char** buf; } ;
struct pcmcia_device {int dummy; } ;
typedef int cisdata_t ;


 int pcmcia_do_get_tuple ;
 int pcmcia_loop_tuple (struct pcmcia_device*,int ,int ,struct pcmcia_loop_get*) ;

size_t pcmcia_get_tuple(struct pcmcia_device *p_dev, cisdata_t code,
   unsigned char **buf)
{
 struct pcmcia_loop_get get = {
  .len = 0,
  .buf = buf,
 };

 *get.buf = ((void*)0);
 pcmcia_loop_tuple(p_dev, code, pcmcia_do_get_tuple, &get);

 return get.len;
}
