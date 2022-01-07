
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int bflags; int io_pages; } ;


 int EXTENT_BUFFER_DIRTY ;
 int EXTENT_BUFFER_WRITEBACK ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int extent_buffer_under_io(struct extent_buffer *eb)
{
 return (atomic_read(&eb->io_pages) ||
  test_bit(EXTENT_BUFFER_WRITEBACK, &eb->bflags) ||
  test_bit(EXTENT_BUFFER_DIRTY, &eb->bflags));
}
