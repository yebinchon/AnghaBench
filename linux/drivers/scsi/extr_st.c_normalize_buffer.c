
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct st_buffer {int reserved_page_order; int frp_segs; int buffer_size; TYPE_1__ map_data; scalar_t__ sg_segs; int * reserved_pages; } ;


 int PAGE_SIZE ;
 int __free_pages (int ,int) ;

__attribute__((used)) static void normalize_buffer(struct st_buffer * STbuffer)
{
 int i, order = STbuffer->reserved_page_order;

 for (i = 0; i < STbuffer->frp_segs; i++) {
  __free_pages(STbuffer->reserved_pages[i], order);
  STbuffer->buffer_size -= (PAGE_SIZE << order);
 }
 STbuffer->frp_segs = 0;
 STbuffer->sg_segs = 0;
 STbuffer->reserved_page_order = 0;
 STbuffer->map_data.offset = 0;
}
