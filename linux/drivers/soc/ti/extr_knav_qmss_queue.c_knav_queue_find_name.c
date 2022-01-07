
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {char* name; } ;


 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;

__attribute__((used)) static const char *knav_queue_find_name(struct device_node *node)
{
 const char *name;

 if (of_property_read_string(node, "label", &name) < 0)
  name = node->name;
 if (!name)
  name = "unknown";
 return name;
}
