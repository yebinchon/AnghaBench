
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int info; int ncpus; } ;
struct TYPE_4__ {TYPE_1__ mc_physcpuinfo; } ;
struct xen_mc {TYPE_2__ u; int cmd; } ;
struct mcinfo_logical_cpu {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HYPERVISOR_mca (struct xen_mc*) ;
 int VIRQ_MCA ;
 int XEN_MC_physcpuinfo ;
 int bind_virq_to_irqhandler (int ,int ,int ,int ,char*,int *) ;
 int g_physinfo ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;
 int memset (struct xen_mc*,int ,int) ;
 int ncpus ;
 int pr_err (char*) ;
 int set_xen_guest_handle (int ,int ) ;
 int xen_mce_interrupt ;

__attribute__((used)) static int bind_virq_for_mce(void)
{
 int ret;
 struct xen_mc mc_op;

 memset(&mc_op, 0, sizeof(struct xen_mc));


 mc_op.cmd = XEN_MC_physcpuinfo;
 set_xen_guest_handle(mc_op.u.mc_physcpuinfo.info, g_physinfo);
 ret = HYPERVISOR_mca(&mc_op);
 if (ret) {
  pr_err("Failed to get CPU numbers\n");
  return ret;
 }


 ncpus = mc_op.u.mc_physcpuinfo.ncpus;
 g_physinfo = kcalloc(ncpus, sizeof(struct mcinfo_logical_cpu),
        GFP_KERNEL);
 if (!g_physinfo)
  return -ENOMEM;
 set_xen_guest_handle(mc_op.u.mc_physcpuinfo.info, g_physinfo);
 ret = HYPERVISOR_mca(&mc_op);
 if (ret) {
  pr_err("Failed to get CPU info\n");
  kfree(g_physinfo);
  return ret;
 }

 ret = bind_virq_to_irqhandler(VIRQ_MCA, 0,
           xen_mce_interrupt, 0, "mce", ((void*)0));
 if (ret < 0) {
  pr_err("Failed to bind virq\n");
  kfree(g_physinfo);
  return ret;
 }

 return 0;
}
