
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_iterator {int dummy; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int ENOENT ;
 int * of_get_property (struct device_node const*,char const*,int*) ;
 int of_phandle_iterator_init (struct of_phandle_iterator*,struct device_node const*,char const*,char const*,int) ;
 int of_phandle_iterator_next (struct of_phandle_iterator*) ;

int of_count_phandle_with_args(const struct device_node *np, const char *list_name,
    const char *cells_name)
{
 struct of_phandle_iterator it;
 int rc, cur_index = 0;







 if (!cells_name) {
  const __be32 *list;
  int size;

  list = of_get_property(np, list_name, &size);
  if (!list)
   return -ENOENT;

  return size / sizeof(*list);
 }

 rc = of_phandle_iterator_init(&it, np, list_name, cells_name, -1);
 if (rc)
  return rc;

 while ((rc = of_phandle_iterator_next(&it)) == 0)
  cur_index += 1;

 if (rc != -ENOENT)
  return rc;

 return cur_index;
}
