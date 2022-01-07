
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;

__attribute__((used)) static inline
unsigned int count_pages(unsigned long iov_base, size_t iov_len)
{
 unsigned long first = (iov_base & PAGE_MASK) >> PAGE_SHIFT;
 unsigned long last = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;

 return last - first + 1;
}
