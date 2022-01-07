
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int cpu_to_be16 (int ) ;
 int pr_err (char*,int *,void*) ;

__attribute__((used)) static inline void swap_buf_16(unsigned char *buf, int len, void *end)
{
 int n;

 u16 *buf_16 = (u16 *)buf;
 len = ((len + 1) >> 1);
 if ((void *)&buf_16[len] > end) {
  pr_err("swap_buf_16: swap exceeds boundary (%p > %p)!",
         &buf_16[len], end);
  return;
 }
 for (n = 0; n < len; n++) {
  *buf_16 = cpu_to_be16(*buf_16);
  buf_16++;
 }
}
