
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int * flag_buf; int * intermediate_rxbuffer; } ;


 int kfree (int *) ;

__attribute__((used)) static void mgsl_free_intermediate_rxbuffer_memory(struct mgsl_struct *info)
{
 kfree(info->intermediate_rxbuffer);
 info->intermediate_rxbuffer = ((void*)0);
 kfree(info->flag_buf);
 info->flag_buf = ((void*)0);

}
