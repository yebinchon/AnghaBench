
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic_t ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static int debugfs_atomic_t_set(void *data, u64 val)
{
 atomic_set((atomic_t *)data, val);
 return 0;
}
