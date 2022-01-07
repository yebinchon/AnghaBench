
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long sector_t ;


 int sdebug_unmap_alignment ;
 unsigned long sdebug_unmap_granularity ;

__attribute__((used)) static sector_t map_index_to_lba(unsigned long index)
{
 sector_t lba = index * sdebug_unmap_granularity;

 if (sdebug_unmap_alignment)
  lba -= sdebug_unmap_granularity - sdebug_unmap_alignment;
 return lba;
}
