
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sector_t ;


 unsigned long lba_to_map_index (scalar_t__) ;
 scalar_t__ map_index_to_lba (unsigned long) ;
 unsigned long map_size ;
 int map_storep ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static void map_region(sector_t lba, unsigned int len)
{
 sector_t end = lba + len;

 while (lba < end) {
  unsigned long index = lba_to_map_index(lba);

  if (index < map_size)
   set_bit(index, map_storep);

  lba = map_index_to_lba(index + 1);
 }
}
