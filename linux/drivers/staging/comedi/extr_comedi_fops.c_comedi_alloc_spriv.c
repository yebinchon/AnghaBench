
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {void* private; } ;


 int GFP_KERNEL ;
 int comedi_set_spriv_auto_free (struct comedi_subdevice*) ;
 void* kzalloc (size_t,int ) ;

void *comedi_alloc_spriv(struct comedi_subdevice *s, size_t size)
{
 s->private = kzalloc(size, GFP_KERNEL);
 if (s->private)
  comedi_set_spriv_auto_free(s);
 return s->private;
}
