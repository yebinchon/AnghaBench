
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 int GI_GATE_SEL (unsigned int) ;
 int GI_GATE_SEL_MASK ;
 int NITIO_INPUT_SEL_REG (int ) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;

__attribute__((used)) static inline void ni_tio_set_gate_raw(struct ni_gpct *counter,
           unsigned int gate_source)
{
 ni_tio_set_bits(counter, NITIO_INPUT_SEL_REG(counter->counter_index),
   GI_GATE_SEL_MASK, GI_GATE_SEL(gate_source));
}
