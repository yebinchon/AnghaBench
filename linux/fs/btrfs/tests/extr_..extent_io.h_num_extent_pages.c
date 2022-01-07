
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int start; scalar_t__ len; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int round_up (scalar_t__,int ) ;

__attribute__((used)) static inline int num_extent_pages(const struct extent_buffer *eb)
{
 return (round_up(eb->start + eb->len, PAGE_SIZE) >> PAGE_SHIFT) -
        (eb->start >> PAGE_SHIFT);
}
