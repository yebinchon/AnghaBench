
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct altera_pcie {TYPE_1__* pcie_data; } ;
struct TYPE_2__ {scalar_t__ cap_offset; } ;


 int _altera_pcie_cfg_read (struct altera_pcie*,int ,unsigned int,scalar_t__,int,int *) ;

__attribute__((used)) static int altera_read_cap_word(struct altera_pcie *pcie, u8 busno,
    unsigned int devfn, int offset, u16 *value)
{
 u32 data;
 int ret;

 ret = _altera_pcie_cfg_read(pcie, busno, devfn,
        pcie->pcie_data->cap_offset + offset,
        sizeof(*value),
        &data);
 *value = data;
 return ret;
}
