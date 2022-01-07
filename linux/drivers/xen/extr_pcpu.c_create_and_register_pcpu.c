
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenpf_pcpuinfo {int flags; int xen_cpuid; } ;
struct pcpu {int flags; int list; int cpu_id; } ;


 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 struct pcpu* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int XEN_PCPU_FLAGS_INVALID ;
 struct pcpu* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_warn (char*,int ) ;
 int register_pcpu (struct pcpu*) ;
 int xen_pcpus ;

__attribute__((used)) static struct pcpu *create_and_register_pcpu(struct xenpf_pcpuinfo *info)
{
 struct pcpu *pcpu;
 int err;

 if (info->flags & XEN_PCPU_FLAGS_INVALID)
  return ERR_PTR(-ENODEV);

 pcpu = kzalloc(sizeof(struct pcpu), GFP_KERNEL);
 if (!pcpu)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&pcpu->list);
 pcpu->cpu_id = info->xen_cpuid;
 pcpu->flags = info->flags;


 list_add_tail(&pcpu->list, &xen_pcpus);

 err = register_pcpu(pcpu);
 if (err) {
  pr_warn("Failed to register pcpu%u\n", info->xen_cpuid);
  return ERR_PTR(-ENOENT);
 }

 return pcpu;
}
