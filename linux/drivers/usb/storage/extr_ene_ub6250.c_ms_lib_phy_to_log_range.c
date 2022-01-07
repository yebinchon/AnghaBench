
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MS_LOGICAL_BLOCKS_IN_1ST_SEGMENT ;
 int MS_LOGICAL_BLOCKS_PER_SEGMENT ;
 int MS_PHYSICAL_BLOCKS_PER_SEGMENT ;

__attribute__((used)) static void ms_lib_phy_to_log_range(u16 PhyBlock, u16 *LogStart, u16 *LogEnde)
{
 PhyBlock /= MS_PHYSICAL_BLOCKS_PER_SEGMENT;

 if (PhyBlock) {
  *LogStart = MS_LOGICAL_BLOCKS_IN_1ST_SEGMENT + (PhyBlock - 1) * MS_LOGICAL_BLOCKS_PER_SEGMENT;
  *LogEnde = *LogStart + MS_LOGICAL_BLOCKS_PER_SEGMENT;
 } else {
  *LogStart = 0;
  *LogEnde = MS_LOGICAL_BLOCKS_IN_1ST_SEGMENT;
 }
}
