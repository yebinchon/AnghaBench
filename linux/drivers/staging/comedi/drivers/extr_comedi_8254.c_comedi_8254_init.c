
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {int dummy; } ;


 struct comedi_8254* __i8254_init (unsigned long,int *,unsigned int,unsigned int,unsigned int) ;

struct comedi_8254 *comedi_8254_init(unsigned long iobase,
         unsigned int osc_base,
         unsigned int iosize,
         unsigned int regshift)
{
 return __i8254_init(iobase, ((void*)0), osc_base, iosize, regshift);
}
