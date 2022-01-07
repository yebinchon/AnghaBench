
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmap_batch_state {int dummy; } ;


 int mmap_return_error (int,struct mmap_batch_state*) ;

__attribute__((used)) static int mmap_return_errors(void *data, int nr, void *state)
{
 struct mmap_batch_state *st = state;
 int *errs = data;
 int i;
 int ret;

 for (i = 0; i < nr; i++) {
  ret = mmap_return_error(errs[i], st);
  if (ret < 0)
   return ret;
 }
 return 0;
}
