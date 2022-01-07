
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int bflags; } ;


 int EXTENT_BUFFER_UPTODATE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int extent_buffer_uptodate(struct extent_buffer *eb)
{
 return test_bit(EXTENT_BUFFER_UPTODATE, &eb->bflags);
}
