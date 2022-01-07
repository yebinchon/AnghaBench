
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * msg; int ignore; void* hcam; int baddr; } ;
struct TYPE_5__ {int ignore; int * msg; void* hcam; int baddr; } ;
struct pmcraid_instance {TYPE_3__ ldn; TYPE_2__ ccn; TYPE_1__* pdev; } ;
struct pmcraid_hcam_ldn {int dummy; } ;
struct pmcraid_hcam_ccn_ext {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PMCRAID_AEN_HDR_SIZE ;
 int atomic_set (int *,int ) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int pmcraid_release_hcams (struct pmcraid_instance*) ;

__attribute__((used)) static int pmcraid_allocate_hcams(struct pmcraid_instance *pinstance)
{
 pinstance->ccn.msg = dma_alloc_coherent(&pinstance->pdev->dev,
     PMCRAID_AEN_HDR_SIZE +
     sizeof(struct pmcraid_hcam_ccn_ext),
     &pinstance->ccn.baddr, GFP_KERNEL);

 pinstance->ldn.msg = dma_alloc_coherent(&pinstance->pdev->dev,
     PMCRAID_AEN_HDR_SIZE +
     sizeof(struct pmcraid_hcam_ldn),
     &pinstance->ldn.baddr, GFP_KERNEL);

 if (pinstance->ldn.msg == ((void*)0) || pinstance->ccn.msg == ((void*)0)) {
  pmcraid_release_hcams(pinstance);
 } else {
  pinstance->ccn.hcam =
   (void *)pinstance->ccn.msg + PMCRAID_AEN_HDR_SIZE;
  pinstance->ldn.hcam =
   (void *)pinstance->ldn.msg + PMCRAID_AEN_HDR_SIZE;

  atomic_set(&pinstance->ccn.ignore, 0);
  atomic_set(&pinstance->ldn.ignore, 0);
 }

 return (pinstance->ldn.msg == ((void*)0)) ? -ENOMEM : 0;
}
