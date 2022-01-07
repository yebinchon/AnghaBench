
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_family {int dummy; } ;


 int __w1_family_put (struct w1_family*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int w1_flock ;

void w1_family_put(struct w1_family *f)
{
 spin_lock(&w1_flock);
 __w1_family_put(f);
 spin_unlock(&w1_flock);
}
