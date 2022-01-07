
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XBT_NIL ;
 int xenbus_scanf (int ,char const*,char const*,char*,unsigned int*) ;

unsigned int xenbus_read_unsigned(const char *dir, const char *node,
      unsigned int default_val)
{
 unsigned int val;
 int ret;

 ret = xenbus_scanf(XBT_NIL, dir, node, "%u", &val);
 if (ret <= 0)
  val = default_val;

 return val;
}
