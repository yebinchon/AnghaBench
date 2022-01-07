
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int otherend_id; } ;
typedef int grant_ref_t ;


 int XEN_PAGE_SIZE ;
 int gnttab_end_foreign_access_ref (int,int ) ;
 int gnttab_grant_foreign_access (int ,int ,int ) ;
 int virt_to_gfn (void*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;

int xenbus_grant_ring(struct xenbus_device *dev, void *vaddr,
        unsigned int nr_pages, grant_ref_t *grefs)
{
 int err;
 int i, j;

 for (i = 0; i < nr_pages; i++) {
  err = gnttab_grant_foreign_access(dev->otherend_id,
        virt_to_gfn(vaddr), 0);
  if (err < 0) {
   xenbus_dev_fatal(dev, err,
      "granting access to ring page");
   goto fail;
  }
  grefs[i] = err;

  vaddr = vaddr + XEN_PAGE_SIZE;
 }

 return 0;

fail:
 for (j = 0; j < i; j++)
  gnttab_end_foreign_access_ref(grefs[j], 0);
 return err;
}
