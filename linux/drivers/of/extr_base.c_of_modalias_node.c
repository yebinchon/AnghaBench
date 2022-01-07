
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 char* of_get_property (struct device_node*,char*,int*) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

int of_modalias_node(struct device_node *node, char *modalias, int len)
{
 const char *compatible, *p;
 int cplen;

 compatible = of_get_property(node, "compatible", &cplen);
 if (!compatible || strlen(compatible) > cplen)
  return -ENODEV;
 p = strchr(compatible, ',');
 strlcpy(modalias, p ? p + 1 : compatible, len);
 return 0;
}
