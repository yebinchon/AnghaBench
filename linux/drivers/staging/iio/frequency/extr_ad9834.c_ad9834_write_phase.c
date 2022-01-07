
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad9834_state {int msg; int spi; int data; } ;


 int AD9834_PHASE_BITS ;
 unsigned long BIT (int ) ;
 int EINVAL ;
 int cpu_to_be16 (unsigned long) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad9834_write_phase(struct ad9834_state *st,
         unsigned long addr, unsigned long phase)
{
 if (phase > BIT(AD9834_PHASE_BITS))
  return -EINVAL;
 st->data = cpu_to_be16(addr | phase);

 return spi_sync(st->spi, &st->msg);
}
