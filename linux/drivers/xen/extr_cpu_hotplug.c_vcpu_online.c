
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int XBT_NIL ;
 int pr_err (char*,...) ;
 int sprintf (char*,char*,unsigned int) ;
 scalar_t__ strcmp (char*,char*) ;
 int xen_initial_domain () ;
 int xenbus_scanf (int ,char*,char*,char*,char*) ;

__attribute__((used)) static int vcpu_online(unsigned int cpu)
{
 int err;
 char dir[16], state[16];

 sprintf(dir, "cpu/%u", cpu);
 err = xenbus_scanf(XBT_NIL, dir, "availability", "%15s", state);
 if (err != 1) {
  if (!xen_initial_domain())
   pr_err("Unable to read cpu state\n");
  return err;
 }

 if (strcmp(state, "online") == 0)
  return 1;
 else if (strcmp(state, "offline") == 0)
  return 0;

 pr_err("unknown state(%s) on CPU%d\n", state, cpu);
 return -EINVAL;
}
