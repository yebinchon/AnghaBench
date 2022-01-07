
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int EINVAL ;
 int __par_io_config_pin (int *,size_t,int,int,int,int) ;
 size_t num_par_io_ports ;
 int * par_io ;

int par_io_config_pin(u8 port, u8 pin, int dir, int open_drain,
        int assignment, int has_irq)
{
 if (!par_io || port >= num_par_io_ports)
  return -EINVAL;

 __par_io_config_pin(&par_io[port], pin, dir, open_drain, assignment,
       has_irq);
 return 0;
}
