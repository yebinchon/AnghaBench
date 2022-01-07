
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;


 int ni_tio_set_bits_transient (struct ni_gpct*,int,unsigned int,unsigned int,int) ;

void ni_tio_set_bits(struct ni_gpct *counter, enum ni_gpct_register reg,
       unsigned int mask, unsigned int value)
{
 ni_tio_set_bits_transient(counter, reg, mask, value, 0x0);
}
