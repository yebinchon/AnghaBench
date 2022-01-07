
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 unsigned int GI_BITS_TO_GATE2 (int ) ;
 int NITIO_GATE2_REG (int ) ;
 int ni_tio_get_soft_copy (struct ni_gpct*,int ) ;

__attribute__((used)) static inline unsigned int ni_tio_get_gate2_val(struct ni_gpct *counter)
{
 return GI_BITS_TO_GATE2(ni_tio_get_soft_copy(counter,
  NITIO_GATE2_REG(counter->counter_index)));
}
