
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_ops {int dummy; } ;


 int HVC_COOKIE ;
 struct hv_ops dom0_hvc_ops ;
 struct hv_ops domU_hvc_ops ;
 int hvc_instantiate (int ,int ,struct hv_ops const*) ;
 int xen_domain () ;
 int xen_hvm_console_init () ;
 scalar_t__ xen_hvm_domain () ;
 scalar_t__ xen_initial_domain () ;
 int xen_pv_console_init () ;

__attribute__((used)) static int xen_cons_init(void)
{
 const struct hv_ops *ops;

 if (!xen_domain())
  return 0;

 if (xen_initial_domain())
  ops = &dom0_hvc_ops;
 else {
  int r;
  ops = &domU_hvc_ops;

  if (xen_hvm_domain())
   r = xen_hvm_console_init();
  else
   r = xen_pv_console_init();
  if (r < 0)
   return r;
 }

 hvc_instantiate(HVC_COOKIE, 0, ops);
 return 0;
}
