
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int cpdata; } ;


 int EINVAL ;
 int QE_PIO_PINS ;
 int in_be32 (int *) ;
 int num_par_io_ports ;
 int out_be32 (int *,int) ;
 TYPE_1__* par_io ;

int par_io_data_set(u8 port, u8 pin, u8 val)
{
 u32 pin_mask, tmp_val;

 if (port >= num_par_io_ports)
  return -EINVAL;
 if (pin >= QE_PIO_PINS)
  return -EINVAL;

 pin_mask = (u32) (1 << (QE_PIO_PINS - 1 - pin));

 tmp_val = in_be32(&par_io[port].cpdata);

 if (val == 0)
  out_be32(&par_io[port].cpdata, ~pin_mask & tmp_val);
 else
  out_be32(&par_io[port].cpdata, pin_mask | tmp_val);

 return 0;
}
