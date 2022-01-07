
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ nr_to_write; int range_start; int range_end; scalar_t__ range_cyclic; } ;
struct address_space {void* writeback_index; } ;
typedef void* pgoff_t ;


 int LLONG_MAX ;
 int PAGE_SHIFT ;
 int _enter (char*) ;
 int _leave (char*,int) ;
 int afs_writepages_region (struct address_space*,struct writeback_control*,void*,void*,void**) ;

int afs_writepages(struct address_space *mapping,
     struct writeback_control *wbc)
{
 pgoff_t start, end, next;
 int ret;

 _enter("");

 if (wbc->range_cyclic) {
  start = mapping->writeback_index;
  end = -1;
  ret = afs_writepages_region(mapping, wbc, start, end, &next);
  if (start > 0 && wbc->nr_to_write > 0 && ret == 0)
   ret = afs_writepages_region(mapping, wbc, 0, start,
          &next);
  mapping->writeback_index = next;
 } else if (wbc->range_start == 0 && wbc->range_end == LLONG_MAX) {
  end = (pgoff_t)(LLONG_MAX >> PAGE_SHIFT);
  ret = afs_writepages_region(mapping, wbc, 0, end, &next);
  if (wbc->nr_to_write > 0)
   mapping->writeback_index = next;
 } else {
  start = wbc->range_start >> PAGE_SHIFT;
  end = wbc->range_end >> PAGE_SHIFT;
  ret = afs_writepages_region(mapping, wbc, start, end, &next);
 }

 _leave(" = %d", ret);
 return ret;
}
