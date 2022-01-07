
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_fib {int dummy; } ;
struct fib {int dummy; } ;
struct aac_dev {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct hw_fib*) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static int fillup_pools(struct aac_dev *dev, struct hw_fib **hw_fib_pool,
      struct fib **fib_pool,
      unsigned int num)
{
 struct hw_fib **hw_fib_p;
 struct fib **fib_p;

 hw_fib_p = hw_fib_pool;
 fib_p = fib_pool;
 while (hw_fib_p < &hw_fib_pool[num]) {
  *(hw_fib_p) = kmalloc(sizeof(struct hw_fib), GFP_KERNEL);
  if (!(*(hw_fib_p++))) {
   --hw_fib_p;
   break;
  }

  *(fib_p) = kmalloc(sizeof(struct fib), GFP_KERNEL);
  if (!(*(fib_p++))) {
   kfree(*(--hw_fib_p));
   break;
  }
 }




 num = hw_fib_p - hw_fib_pool;
 return num;
}
