
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_vde {int * iram; } ;


 int trace_vde_setup_iram_entry (unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static void tegra_vde_setup_iram_entry(struct tegra_vde *vde,
           unsigned int table,
           unsigned int row,
           u32 value1, u32 value2)
{
 u32 *iram_tables = vde->iram;

 trace_vde_setup_iram_entry(table, row, value1, value2);

 iram_tables[0x20 * table + row * 2] = value1;
 iram_tables[0x20 * table + row * 2 + 1] = value2;
}
