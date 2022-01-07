
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static int uvcg_config_compare_u32(const void *l, const void *r)
{
 u32 li = *(const u32 *)l;
 u32 ri = *(const u32 *)r;

 return li < ri ? -1 : li == ri ? 0 : 1;
}
