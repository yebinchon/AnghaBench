
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;



__attribute__((used)) static int debugfs_ulong_get(void *data, u64 *val)
{
 *val = *(unsigned long *)data;
 return 0;
}
