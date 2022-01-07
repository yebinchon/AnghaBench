
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pcie_ib_map {int type; } ;
typedef enum iproc_pcie_ib_map_type { ____Placeholder_iproc_pcie_ib_map_type } iproc_pcie_ib_map_type ;



__attribute__((used)) static inline bool iproc_pcie_ib_check_type(const struct iproc_pcie_ib_map *ib_map,
         enum iproc_pcie_ib_map_type type)
{
 return !!(ib_map->type == type);
}
