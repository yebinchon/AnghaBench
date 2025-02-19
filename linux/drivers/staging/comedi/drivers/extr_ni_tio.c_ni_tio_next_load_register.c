
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {unsigned int counter_index; } ;


 unsigned int GI_NEXT_LOAD_SRC (unsigned int) ;
 unsigned int NITIO_LOADA_REG (unsigned int) ;
 unsigned int NITIO_LOADB_REG (unsigned int) ;
 int NITIO_SHARED_STATUS_REG (unsigned int) ;
 unsigned int ni_tio_read (struct ni_gpct*,int ) ;

__attribute__((used)) static unsigned int ni_tio_next_load_register(struct ni_gpct *counter)
{
 unsigned int cidx = counter->counter_index;
 unsigned int bits = ni_tio_read(counter, NITIO_SHARED_STATUS_REG(cidx));

 return (bits & GI_NEXT_LOAD_SRC(cidx))
   ? NITIO_LOADB_REG(cidx)
   : NITIO_LOADA_REG(cidx);
}
