
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic_t ;


 int atomic_read (int *) ;

__attribute__((used)) static int debugfs_atomic_t_get(void *data, u64 *val)
{
 *val = atomic_read((atomic_t *)data);
 return 0;
}
