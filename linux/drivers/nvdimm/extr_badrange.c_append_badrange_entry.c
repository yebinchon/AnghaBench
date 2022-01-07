
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct badrange_entry {int list; void* length; void* start; } ;
struct badrange {int list; int lock; } ;


 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void append_badrange_entry(struct badrange *badrange,
  struct badrange_entry *bre, u64 addr, u64 length)
{
 lockdep_assert_held(&badrange->lock);
 bre->start = addr;
 bre->length = length;
 list_add_tail(&bre->list, &badrange->list);
}
