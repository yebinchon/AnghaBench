
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ baddr; int * hcam; int * msg; } ;
struct TYPE_4__ {scalar_t__ baddr; int * hcam; int * msg; } ;
struct pmcraid_instance {TYPE_3__ ldn; TYPE_2__* pdev; TYPE_1__ ccn; } ;
struct pmcraid_hcam_ldn {int dummy; } ;
struct pmcraid_hcam_ccn_ext {int dummy; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ PMCRAID_AEN_HDR_SIZE ;
 int dma_free_coherent (int *,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static void pmcraid_release_hcams(struct pmcraid_instance *pinstance)
{
 if (pinstance->ccn.msg != ((void*)0)) {
  dma_free_coherent(&pinstance->pdev->dev,
        PMCRAID_AEN_HDR_SIZE +
        sizeof(struct pmcraid_hcam_ccn_ext),
        pinstance->ccn.msg,
        pinstance->ccn.baddr);

  pinstance->ccn.msg = ((void*)0);
  pinstance->ccn.hcam = ((void*)0);
  pinstance->ccn.baddr = 0;
 }

 if (pinstance->ldn.msg != ((void*)0)) {
  dma_free_coherent(&pinstance->pdev->dev,
        PMCRAID_AEN_HDR_SIZE +
        sizeof(struct pmcraid_hcam_ldn),
        pinstance->ldn.msg,
        pinstance->ldn.baddr);

  pinstance->ldn.msg = ((void*)0);
  pinstance->ldn.hcam = ((void*)0);
  pinstance->ldn.baddr = 0;
 }
}
