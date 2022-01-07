
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct xenpf_symdata {scalar_t__ namelen; scalar_t__ symnum; int name; } ;
struct TYPE_3__ {struct xenpf_symdata symdata; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct xensyms {scalar_t__ namelen; TYPE_2__ op; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HYPERVISOR_platform_op (TYPE_2__*) ;
 int kfree (int ) ;
 int kzalloc (scalar_t__,int ) ;
 int memset (int ,int ,scalar_t__) ;
 int set_xen_guest_handle (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int xensyms_next_sym(struct xensyms *xs)
{
 int ret;
 struct xenpf_symdata *symdata = &xs->op.u.symdata;
 uint64_t symnum;

 memset(xs->name, 0, xs->namelen);
 symdata->namelen = xs->namelen;

 symnum = symdata->symnum;

 ret = HYPERVISOR_platform_op(&xs->op);
 if (ret < 0)
  return ret;





 if (unlikely(symdata->namelen > xs->namelen)) {
  kfree(xs->name);

  xs->namelen = symdata->namelen;
  xs->name = kzalloc(xs->namelen, GFP_KERNEL);
  if (!xs->name)
   return -ENOMEM;

  set_xen_guest_handle(symdata->name, xs->name);
  symdata->symnum--;

  ret = HYPERVISOR_platform_op(&xs->op);
  if (ret < 0)
   return ret;
 }

 if (symdata->symnum == symnum)

  return 1;

 return 0;
}
