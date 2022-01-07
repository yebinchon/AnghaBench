
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GFP_KERNEL ;
 int * alloc_pages_exact (int ,int ) ;
 int get_pages_list_size (size_t) ;

u64 *optee_allocate_pages_list(size_t num_entries)
{
 return alloc_pages_exact(get_pages_list_size(num_entries), GFP_KERNEL);
}
