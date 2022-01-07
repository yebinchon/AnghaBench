
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void __afs_stat(atomic_t *s)
{
 atomic_inc(s);
}
