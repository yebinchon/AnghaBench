
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badrange {int lock; } ;


 int add_badrange (struct badrange*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int badrange_add(struct badrange *badrange, u64 addr, u64 length)
{
 int rc;

 spin_lock(&badrange->lock);
 rc = add_badrange(badrange, addr, length);
 spin_unlock(&badrange->lock);

 return rc;
}
