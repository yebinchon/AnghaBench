
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xen_pfn_t ;
struct xen_add_to_physmap {unsigned int idx; int gpfn; int space; void* domid; } ;
struct gnttab_setup_table {unsigned int nr_frames; scalar_t__ status; int frame_list; void* dom; } ;
struct TYPE_4__ {int (* map_frames ) (int *,unsigned int) ;} ;
struct TYPE_3__ {unsigned int count; int * pfn; } ;


 int BUG_ON (int) ;
 void* DOMID_SELF ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_ATOMIC ;
 int GNTTABOP_setup_table ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_setup_table*,int) ;
 int HYPERVISOR_memory_op (int ,struct xen_add_to_physmap*) ;
 int XENFEAT_auto_translated_physmap ;
 int XENMAPSPACE_grant_table ;
 int XENMEM_add_to_physmap ;
 TYPE_2__* gnttab_interface ;
 int kfree (int *) ;
 int * kmalloc_array (unsigned int,int,int ) ;
 int pr_warn (char*,int) ;
 int set_xen_guest_handle (int ,int *) ;
 int stub1 (int *,unsigned int) ;
 TYPE_1__ xen_auto_xlat_grant_frames ;
 scalar_t__ xen_feature (int ) ;

__attribute__((used)) static int gnttab_map(unsigned int start_idx, unsigned int end_idx)
{
 struct gnttab_setup_table setup;
 xen_pfn_t *frames;
 unsigned int nr_gframes = end_idx + 1;
 int rc;

 if (xen_feature(XENFEAT_auto_translated_physmap)) {
  struct xen_add_to_physmap xatp;
  unsigned int i = end_idx;
  rc = 0;
  BUG_ON(xen_auto_xlat_grant_frames.count < nr_gframes);




  do {
   xatp.domid = DOMID_SELF;
   xatp.idx = i;
   xatp.space = XENMAPSPACE_grant_table;
   xatp.gpfn = xen_auto_xlat_grant_frames.pfn[i];
   rc = HYPERVISOR_memory_op(XENMEM_add_to_physmap, &xatp);
   if (rc != 0) {
    pr_warn("grant table add_to_physmap failed, err=%d\n",
     rc);
    break;
   }
  } while (i-- > start_idx);

  return rc;
 }




 frames = kmalloc_array(nr_gframes, sizeof(unsigned long), GFP_ATOMIC);
 if (!frames)
  return -ENOMEM;

 setup.dom = DOMID_SELF;
 setup.nr_frames = nr_gframes;
 set_xen_guest_handle(setup.frame_list, frames);

 rc = HYPERVISOR_grant_table_op(GNTTABOP_setup_table, &setup, 1);
 if (rc == -ENOSYS) {
  kfree(frames);
  return -ENOSYS;
 }

 BUG_ON(rc || setup.status);

 rc = gnttab_interface->map_frames(frames, nr_gframes);

 kfree(frames);

 return rc;
}
