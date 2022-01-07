
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct ntb_transport_mw {size_t xlat_size; size_t buff_size; size_t alloc_size; int dma_addr; } ;
struct ntb_transport_ctx {TYPE_1__* ndev; struct ntb_transport_mw* mw_vec; } ;
typedef int resource_size_t ;
struct TYPE_3__ {struct pci_dev* pdev; } ;


 int EINVAL ;
 int EIO ;
 int PIDX ;
 int dev_err (int *,char*,...) ;
 int ntb_alloc_mw_buffer (struct ntb_transport_mw*,int *,int ) ;
 int ntb_free_mw (struct ntb_transport_ctx*,int) ;
 int ntb_mw_get_align (TYPE_1__*,int ,int,int *,int *,int *) ;
 int ntb_mw_set_trans (TYPE_1__*,int ,int,int ,size_t) ;
 size_t round_up (int ,int ) ;

__attribute__((used)) static int ntb_set_mw(struct ntb_transport_ctx *nt, int num_mw,
        resource_size_t size)
{
 struct ntb_transport_mw *mw = &nt->mw_vec[num_mw];
 struct pci_dev *pdev = nt->ndev->pdev;
 size_t xlat_size, buff_size;
 resource_size_t xlat_align;
 resource_size_t xlat_align_size;
 int rc;

 if (!size)
  return -EINVAL;

 rc = ntb_mw_get_align(nt->ndev, PIDX, num_mw, &xlat_align,
         &xlat_align_size, ((void*)0));
 if (rc)
  return rc;

 xlat_size = round_up(size, xlat_align_size);
 buff_size = round_up(size, xlat_align);


 if (mw->xlat_size == xlat_size)
  return 0;

 if (mw->buff_size)
  ntb_free_mw(nt, num_mw);


 mw->xlat_size = xlat_size;
 mw->buff_size = buff_size;
 mw->alloc_size = buff_size;

 rc = ntb_alloc_mw_buffer(mw, &pdev->dev, xlat_align);
 if (rc) {
  mw->alloc_size *= 2;
  rc = ntb_alloc_mw_buffer(mw, &pdev->dev, xlat_align);
  if (rc) {
   dev_err(&pdev->dev,
    "Unable to alloc aligned MW buff\n");
   mw->xlat_size = 0;
   mw->buff_size = 0;
   mw->alloc_size = 0;
   return rc;
  }
 }


 rc = ntb_mw_set_trans(nt->ndev, PIDX, num_mw, mw->dma_addr,
         mw->xlat_size);
 if (rc) {
  dev_err(&pdev->dev, "Unable to set mw%d translation", num_mw);
  ntb_free_mw(nt, num_mw);
  return -EIO;
 }

 return 0;
}
