
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rc; int request_type; } ;
struct vmmdev_hypervisorinfo {unsigned long hypervisor_start; scalar_t__ hypervisor_size; TYPE_1__ header; } ;
struct vbg_dev {struct page* guest_mappings_dummy_page; void* guest_mappings; } ;
struct page {int dummy; } ;


 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int GUEST_MAPPINGS_TRIES ;
 int PAGE_ALIGN (int) ;
 int PAGE_KERNEL_RO ;
 int PAGE_SHIFT ;
 scalar_t__ PTR_ALIGN (void*,int) ;
 int SZ_4M ;
 int VBG_KERNEL_REQUEST ;
 int VERR_INTERNAL_ERROR ;
 int VMMDEVREQ_GET_HYPERVISOR_INFO ;
 int VMMDEVREQ_SET_HYPERVISOR_INFO ;
 int VM_MAP ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int kfree (struct page**) ;
 struct page** kmalloc_array (int,int,int ) ;
 struct vmmdev_hypervisorinfo* vbg_req_alloc (int,int ,int ) ;
 int vbg_req_free (struct vmmdev_hypervisorinfo*,int) ;
 int vbg_req_perform (struct vbg_dev*,struct vmmdev_hypervisorinfo*) ;
 void* vmap (struct page**,int,int ,int ) ;
 int vunmap (void*) ;

__attribute__((used)) static void vbg_guest_mappings_init(struct vbg_dev *gdev)
{
 struct vmmdev_hypervisorinfo *req;
 void *guest_mappings[GUEST_MAPPINGS_TRIES];
 struct page **pages = ((void*)0);
 u32 size, hypervisor_size;
 int i, rc;


 req = vbg_req_alloc(sizeof(*req), VMMDEVREQ_GET_HYPERVISOR_INFO,
       VBG_KERNEL_REQUEST);
 if (!req)
  return;

 req->hypervisor_start = 0;
 req->hypervisor_size = 0;
 rc = vbg_req_perform(gdev, req);
 if (rc < 0)
  goto out;





 if (req->hypervisor_size == 0)
  goto out;

 hypervisor_size = req->hypervisor_size;

 size = PAGE_ALIGN(req->hypervisor_size) + SZ_4M;

 pages = kmalloc_array(size >> PAGE_SHIFT, sizeof(*pages), GFP_KERNEL);
 if (!pages)
  goto out;

 gdev->guest_mappings_dummy_page = alloc_page(GFP_HIGHUSER);
 if (!gdev->guest_mappings_dummy_page)
  goto out;

 for (i = 0; i < (size >> PAGE_SHIFT); i++)
  pages[i] = gdev->guest_mappings_dummy_page;





 for (i = 0; i < GUEST_MAPPINGS_TRIES; i++) {
  guest_mappings[i] = vmap(pages, (size >> PAGE_SHIFT),
      VM_MAP, PAGE_KERNEL_RO);
  if (!guest_mappings[i])
   break;

  req->header.request_type = VMMDEVREQ_SET_HYPERVISOR_INFO;
  req->header.rc = VERR_INTERNAL_ERROR;
  req->hypervisor_size = hypervisor_size;
  req->hypervisor_start =
   (unsigned long)PTR_ALIGN(guest_mappings[i], SZ_4M);

  rc = vbg_req_perform(gdev, req);
  if (rc >= 0) {
   gdev->guest_mappings = guest_mappings[i];
   break;
  }
 }


 while (--i >= 0)
  vunmap(guest_mappings[i]);


 if (!gdev->guest_mappings) {
  __free_page(gdev->guest_mappings_dummy_page);
  gdev->guest_mappings_dummy_page = ((void*)0);
 }

out:
 vbg_req_free(req, sizeof(*req));
 kfree(pages);
}
