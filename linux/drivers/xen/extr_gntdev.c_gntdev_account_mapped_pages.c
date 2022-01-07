
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_add_return (int,int *) ;
 scalar_t__ limit ;
 int pages_mapped ;

bool gntdev_account_mapped_pages(int count)
{
 return atomic_add_return(count, &pages_mapped) > limit;
}
