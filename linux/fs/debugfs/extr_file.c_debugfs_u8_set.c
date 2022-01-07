
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static int debugfs_u8_set(void *data, u64 val)
{
 *(u8 *)data = val;
 return 0;
}
