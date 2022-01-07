
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct MPT3SAS_ADAPTER {TYPE_1__* pcie_sg_lookup; } ;
struct TYPE_2__ {scalar_t__ pcie_sgl; } ;



void *
mpt3sas_base_get_pcie_sgl(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 return (void *)(ioc->pcie_sg_lookup[smid - 1].pcie_sgl);
}
