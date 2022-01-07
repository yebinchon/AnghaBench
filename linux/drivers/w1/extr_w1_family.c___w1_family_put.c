
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_family {int refcnt; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void __w1_family_put(struct w1_family *f)
{
 atomic_dec(&f->refcnt);
}
