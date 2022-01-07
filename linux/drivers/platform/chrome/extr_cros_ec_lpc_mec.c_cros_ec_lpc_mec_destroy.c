
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_mutex ;
 int mutex_destroy (int *) ;

void cros_ec_lpc_mec_destroy(void)
{
 mutex_destroy(&io_mutex);
}
