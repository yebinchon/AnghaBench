
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_auart_port {TYPE_1__* vendor; } ;
struct TYPE_2__ {unsigned int* reg_offset; } ;



__attribute__((used)) static unsigned int mxs_reg_to_offset(const struct mxs_auart_port *uap,
          unsigned int reg)
{
 return uap->vendor->reg_offset[reg];
}
