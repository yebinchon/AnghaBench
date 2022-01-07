
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_mutex ;
 unsigned int mec_emi_base ;
 unsigned int mec_emi_end ;
 int mutex_init (int *) ;

void cros_ec_lpc_mec_init(unsigned int base, unsigned int end)
{
 mutex_init(&io_mutex);
 mec_emi_base = base;
 mec_emi_end = end;
}
