
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_to_be32 (int ) ;
 int pr_err (char*,int *,void*) ;

__attribute__((used)) static inline void swap_buf_32(unsigned char *buf, int len, void *end)
{
 int n;

 u32 *buf_32 = (u32 *)buf;
 len = (len + 3) >> 2;

 if ((void *)&buf_32[len] > end) {
  pr_err("swap_buf_32: swap exceeds boundary (%p > %p)!\n",
         &buf_32[len], end);
  return;
 }
 for (n = 0; n < len; n++) {
  *buf_32 = cpu_to_be32(*buf_32);
  buf_32++;
 }
}
