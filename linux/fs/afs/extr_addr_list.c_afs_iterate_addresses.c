
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_addr_cursor {unsigned long tried; int index; int responded; TYPE_1__* alist; int nr_iterations; } ;
struct TYPE_2__ {unsigned long responded; unsigned long failed; int preferred; } ;


 int READ_ONCE (int ) ;
 int __ffs (unsigned long) ;
 int _enter (char*,unsigned long,unsigned long,unsigned long,int) ;
 int set_bit (int,unsigned long*) ;
 scalar_t__ test_bit (int,unsigned long*) ;

bool afs_iterate_addresses(struct afs_addr_cursor *ac)
{
 unsigned long set, failed;
 int index;

 if (!ac->alist)
  return 0;

 set = ac->alist->responded;
 failed = ac->alist->failed;
 _enter("%lx-%lx-%lx,%d", set, failed, ac->tried, ac->index);

 ac->nr_iterations++;

 set &= ~(failed | ac->tried);

 if (!set)
  return 0;

 index = READ_ONCE(ac->alist->preferred);
 if (test_bit(index, &set))
  goto selected;

 index = __ffs(set);

selected:
 ac->index = index;
 set_bit(index, &ac->tried);
 ac->responded = 0;
 return 1;
}
