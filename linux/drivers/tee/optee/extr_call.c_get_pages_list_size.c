
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (size_t,int ) ;
 int OPTEE_MSG_NONCONTIG_PAGE_SIZE ;
 int PAGELIST_ENTRIES_PER_PAGE ;

__attribute__((used)) static size_t get_pages_list_size(size_t num_entries)
{
 int pages = DIV_ROUND_UP(num_entries, PAGELIST_ENTRIES_PER_PAGE);

 return pages * OPTEE_MSG_NONCONTIG_PAGE_SIZE;
}
