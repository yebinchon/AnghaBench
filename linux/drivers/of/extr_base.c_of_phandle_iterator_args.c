
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct of_phandle_iterator {int cur_count; int cur; } ;


 scalar_t__ WARN_ON (int) ;
 int be32_to_cpup (int ) ;

int of_phandle_iterator_args(struct of_phandle_iterator *it,
        uint32_t *args,
        int size)
{
 int i, count;

 count = it->cur_count;

 if (WARN_ON(size < count))
  count = size;

 for (i = 0; i < count; i++)
  args[i] = be32_to_cpup(it->cur++);

 return count;
}
