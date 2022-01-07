
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_pages_exact (void*,int ) ;
 int get_pages_list_size (size_t) ;

void optee_free_pages_list(void *list, size_t num_entries)
{
 free_pages_exact(list, get_pages_list_size(num_entries));
}
