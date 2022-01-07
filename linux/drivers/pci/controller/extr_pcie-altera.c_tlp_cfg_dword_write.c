
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct altera_pcie {scalar_t__ root_bus_nr; TYPE_2__* pcie_data; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* tlp_read_pkt ) (struct altera_pcie*,int *) ;int (* tlp_write_pkt ) (struct altera_pcie*,scalar_t__*,scalar_t__,int) ;} ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_PRIMARY_BUS ;
 int TLP_HDR_SIZE ;
 int get_tlp_header (struct altera_pcie*,scalar_t__,scalar_t__,int,scalar_t__,int,scalar_t__*) ;
 int stub1 (struct altera_pcie*,scalar_t__*,scalar_t__,int) ;
 int stub2 (struct altera_pcie*,scalar_t__*,scalar_t__,int) ;
 int stub3 (struct altera_pcie*,int *) ;

__attribute__((used)) static int tlp_cfg_dword_write(struct altera_pcie *pcie, u8 bus, u32 devfn,
          int where, u8 byte_en, u32 value)
{
 u32 headers[TLP_HDR_SIZE];
 int ret;

 get_tlp_header(pcie, bus, devfn, where, byte_en, 0,
         headers);


 if ((where & 0x7) == 0)
  pcie->pcie_data->ops->tlp_write_pkt(pcie, headers,
          value, 1);
 else
  pcie->pcie_data->ops->tlp_write_pkt(pcie, headers,
          value, 0);

 ret = pcie->pcie_data->ops->tlp_read_pkt(pcie, ((void*)0));
 if (ret != PCIBIOS_SUCCESSFUL)
  return ret;





 if ((bus == pcie->root_bus_nr) && (where == PCI_PRIMARY_BUS))
  pcie->root_bus_nr = (u8)(value);

 return PCIBIOS_SUCCESSFUL;
}
