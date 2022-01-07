
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct MPT3SAS_ADAPTER {TYPE_1__* pcie_sg_lookup; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int pcie_sgl_dma; } ;



dma_addr_t
mpt3sas_base_get_pcie_sgl_dma(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 return ioc->pcie_sg_lookup[smid - 1].pcie_sgl_dma;
}
