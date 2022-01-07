
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; } ;


 scalar_t__ IS_ERR (char*) ;
 int XBT_NIL ;
 int kfree (char*) ;
 int pr_warn (char*) ;
 unsigned long simple_strtoul (char*,char**,int) ;
 char* xenbus_read (int ,int ,char*,int *) ;

__attribute__((used)) static void xen_net_read_rate(struct xenbus_device *dev,
         unsigned long *bytes, unsigned long *usec)
{
 char *s, *e;
 unsigned long b, u;
 char *ratestr;


 *bytes = ~0UL;
 *usec = 0;

 ratestr = xenbus_read(XBT_NIL, dev->nodename, "rate", ((void*)0));
 if (IS_ERR(ratestr))
  return;

 s = ratestr;
 b = simple_strtoul(s, &e, 10);
 if ((s == e) || (*e != ','))
  goto fail;

 s = e + 1;
 u = simple_strtoul(s, &e, 10);
 if ((s == e) || (*e != '\0'))
  goto fail;

 *bytes = b;
 *usec = u;

 kfree(ratestr);
 return;

 fail:
 pr_warn("Failed to parse network rate limit. Traffic unlimited.\n");
 kfree(ratestr);
}
