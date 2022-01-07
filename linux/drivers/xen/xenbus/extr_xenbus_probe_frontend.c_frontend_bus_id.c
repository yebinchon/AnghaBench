
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ XEN_BUS_ID_SIZE ;
 int pr_warn (char*,char const*) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int frontend_bus_id(char bus_id[XEN_BUS_ID_SIZE], const char *nodename)
{
 nodename = strchr(nodename, '/');
 if (!nodename || strlen(nodename + 1) >= XEN_BUS_ID_SIZE) {
  pr_warn("bad frontend %s\n", nodename);
  return -EINVAL;
 }

 strlcpy(bus_id, nodename + 1, XEN_BUS_ID_SIZE);
 if (!strchr(bus_id, '/')) {
  pr_warn("bus_id %s no slash\n", bus_id);
  return -EINVAL;
 }
 *strchr(bus_id, '/') = '-';
 return 0;
}
