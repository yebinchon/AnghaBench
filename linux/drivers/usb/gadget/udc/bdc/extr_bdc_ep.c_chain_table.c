
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bd_table {TYPE_1__* start_bd; int dma; } ;
struct TYPE_2__ {int* offset; } ;


 int MARK_CHAIN_BD ;
 void* cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void chain_table(struct bd_table *prev_table,
     struct bd_table *next_table,
     u32 bd_p_tab)
{

 prev_table->start_bd[bd_p_tab-1].offset[0] =
    cpu_to_le32(lower_32_bits(next_table->dma));

 prev_table->start_bd[bd_p_tab-1].offset[1] =
    cpu_to_le32(upper_32_bits(next_table->dma));

 prev_table->start_bd[bd_p_tab-1].offset[2] =
    0x0;

 prev_table->start_bd[bd_p_tab-1].offset[3] =
    cpu_to_le32(MARK_CHAIN_BD);
}
