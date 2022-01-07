
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long sector_t ;


 scalar_t__ sdebug_unmap_alignment ;
 scalar_t__ sdebug_unmap_granularity ;
 int sector_div (unsigned long,scalar_t__) ;

__attribute__((used)) static unsigned long lba_to_map_index(sector_t lba)
{
 if (sdebug_unmap_alignment)
  lba += sdebug_unmap_granularity - sdebug_unmap_alignment;
 sector_div(lba, sdebug_unmap_granularity);
 return lba;
}
