
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_family {int refcnt; } ;


 int atomic_inc (int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void __w1_family_get(struct w1_family *f)
{
 smp_mb__before_atomic();
 atomic_inc(&f->refcnt);
 smp_mb__after_atomic();
}
