
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_data {int stringtabs; int raw_strings; int raw_descs_data; scalar_t__ ffs_eventfd; int eps_count; scalar_t__ epfiles; int gadget; } ;


 int BUG_ON (int ) ;
 int ENTER () ;
 int eventfd_ctx_put (scalar_t__) ;
 int ffs_closed (struct ffs_data*) ;
 int ffs_epfiles_destroy (scalar_t__,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void ffs_data_clear(struct ffs_data *ffs)
{
 ENTER();

 ffs_closed(ffs);

 BUG_ON(ffs->gadget);

 if (ffs->epfiles)
  ffs_epfiles_destroy(ffs->epfiles, ffs->eps_count);

 if (ffs->ffs_eventfd)
  eventfd_ctx_put(ffs->ffs_eventfd);

 kfree(ffs->raw_descs_data);
 kfree(ffs->raw_strings);
 kfree(ffs->stringtabs);
}
