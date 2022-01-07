
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int * gs; } ;


 int kfree (int *) ;

void zfcp_fc_gs_destroy(struct zfcp_adapter *adapter)
{
 kfree(adapter->gs);
 adapter->gs = ((void*)0);
}
