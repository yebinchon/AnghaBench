
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAGE_ALIGN (int) ;
 unsigned long PAGE_MASK ;
 int PAGE_SHIFT ;

__attribute__((used)) static u32 hgcm_call_buf_size_in_pages(void *buf, u32 len)
{
 u32 size = PAGE_ALIGN(len + ((unsigned long)buf & ~PAGE_MASK));

 return size >> PAGE_SHIFT;
}
