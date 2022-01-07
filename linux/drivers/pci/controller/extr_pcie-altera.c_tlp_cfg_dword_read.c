
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct altera_pcie {TYPE_2__* pcie_data; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* tlp_read_pkt ) (struct altera_pcie*,int *) ;int (* tlp_write_pkt ) (struct altera_pcie*,int *,int ,int) ;} ;


 int TLP_HDR_SIZE ;
 int get_tlp_header (struct altera_pcie*,int ,int ,int,int ,int,int *) ;
 int stub1 (struct altera_pcie*,int *,int ,int) ;
 int stub2 (struct altera_pcie*,int *) ;

__attribute__((used)) static int tlp_cfg_dword_read(struct altera_pcie *pcie, u8 bus, u32 devfn,
         int where, u8 byte_en, u32 *value)
{
 u32 headers[TLP_HDR_SIZE];

 get_tlp_header(pcie, bus, devfn, where, byte_en, 1,
         headers);

 pcie->pcie_data->ops->tlp_write_pkt(pcie, headers, 0, 0);

 return pcie->pcie_data->ops->tlp_read_pkt(pcie, value);
}
