
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct MPT3SAS_ADAPTER {int (* base_readl ) (int *) ;TYPE_1__* chip; } ;
struct TYPE_2__ {int Doorbell; } ;


 int MPI2_IOC_STATE_MASK ;
 int stub1 (int *) ;

u32
mpt3sas_base_get_iocstate(struct MPT3SAS_ADAPTER *ioc, int cooked)
{
 u32 s, sc;

 s = ioc->base_readl(&ioc->chip->Doorbell);
 sc = s & MPI2_IOC_STATE_MASK;
 return cooked ? sc : s;
}
