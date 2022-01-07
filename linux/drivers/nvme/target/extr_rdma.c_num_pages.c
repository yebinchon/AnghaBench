
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_MASK ;
 int PAGE_SHIFT ;

__attribute__((used)) static int num_pages(int len)
{
 return 1 + (((len - 1) & PAGE_MASK) >> PAGE_SHIFT);
}
