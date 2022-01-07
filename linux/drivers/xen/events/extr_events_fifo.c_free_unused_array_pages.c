
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_EVENT_ARRAY_PAGES ;
 int ** event_array ;
 unsigned int event_array_pages ;
 int free_page (unsigned long) ;

__attribute__((used)) static void free_unused_array_pages(void)
{
 unsigned i;

 for (i = event_array_pages; i < MAX_EVENT_ARRAY_PAGES; i++) {
  if (!event_array[i])
   break;
  free_page((unsigned long)event_array[i]);
  event_array[i] = ((void*)0);
 }
}
