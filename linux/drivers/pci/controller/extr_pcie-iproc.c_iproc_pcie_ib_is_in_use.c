
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_pcie_ib_map {int nr_sizes; } ;
struct iproc_pcie {struct iproc_pcie_ib_map* ib_map; } ;


 int BIT (int ) ;
 int IPROC_PCIE_IARR0 ;
 int MAP_REG (int ,int) ;
 int iproc_pcie_read_reg (struct iproc_pcie*,int ) ;

__attribute__((used)) static inline bool iproc_pcie_ib_is_in_use(struct iproc_pcie *pcie,
        int region_idx)
{
 const struct iproc_pcie_ib_map *ib_map = &pcie->ib_map[region_idx];
 u32 val;

 val = iproc_pcie_read_reg(pcie, MAP_REG(IPROC_PCIE_IARR0, region_idx));

 return !!(val & (BIT(ib_map->nr_sizes) - 1));
}
