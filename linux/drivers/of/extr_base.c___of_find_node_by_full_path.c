
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* __of_find_node_by_path (struct device_node*,char const*) ;
 int of_node_put (struct device_node*) ;
 char* strchr (char const*,char) ;
 char* strchrnul (char const*,char) ;

struct device_node *__of_find_node_by_full_path(struct device_node *node,
      const char *path)
{
 const char *separator = strchr(path, ':');

 while (node && *path == '/') {
  struct device_node *tmp = node;

  path++;
  node = __of_find_node_by_path(node, path);
  of_node_put(tmp);
  path = strchrnul(path, '/');
  if (separator && separator < path)
   break;
 }
 return node;
}
