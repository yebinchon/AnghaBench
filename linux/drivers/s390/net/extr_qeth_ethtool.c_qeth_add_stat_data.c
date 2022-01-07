
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qeth_stats {int offset; } ;



__attribute__((used)) static void qeth_add_stat_data(u64 **dst, void *src,
          const struct qeth_stats stats[],
          unsigned int size)
{
 unsigned int i;
 char *stat;

 for (i = 0; i < size; i++) {
  stat = (char *)src + stats[i].offset;
  **dst = *(u64 *)stat;
  (*dst)++;
 }
}
