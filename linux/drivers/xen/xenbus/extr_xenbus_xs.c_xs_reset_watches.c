
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int XBT_NIL ;
 int XS_RESET_WATCHES ;
 int pr_warn (char*,int) ;
 int xen_hvm_domain () ;
 scalar_t__ xen_initial_domain () ;
 scalar_t__ xen_strict_xenbus_quirk () ;
 int xenbus_read_unsigned (char*,char*,int ) ;
 int xs_error (int ) ;
 int xs_single (int ,int ,char*,int *) ;

__attribute__((used)) static void xs_reset_watches(void)
{
 int err;

 if (!xen_hvm_domain() || xen_initial_domain())
  return;

 if (xen_strict_xenbus_quirk())
  return;

 if (!xenbus_read_unsigned("control",
      "platform-feature-xs_reset_watches", 0))
  return;

 err = xs_error(xs_single(XBT_NIL, XS_RESET_WATCHES, "", ((void*)0)));
 if (err && err != -EEXIST)
  pr_warn("xs_reset_watches failed: %d\n", err);
}
