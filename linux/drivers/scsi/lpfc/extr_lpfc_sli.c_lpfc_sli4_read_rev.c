
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_13__ {int word1; scalar_t__ avail_vpd_len; int vpd_paddr_low; int vpd_paddr_high; } ;
struct TYPE_10__ {TYPE_8__ read_rev; } ;
struct lpfc_mqe {TYPE_2__ un; } ;
struct lpfc_hba {TYPE_3__* pcidev; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_9__ {struct lpfc_mqe mqe; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
struct TYPE_11__ {int dev; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MBX_POLL ;
 int bf_set (int ,TYPE_8__*,scalar_t__) ;
 int dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 int dma_free_coherent (int *,scalar_t__,int ,int ) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kzalloc (int,int ) ;
 int lpfc_mbx_rd_rev_avail_len ;
 int lpfc_mbx_rd_rev_vpd ;
 int lpfc_read_rev (struct lpfc_hba*,TYPE_4__*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_4__*,int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;

__attribute__((used)) static int
lpfc_sli4_read_rev(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq,
      uint8_t *vpd, uint32_t *vpd_size)
{
 int rc = 0;
 uint32_t dma_size;
 struct lpfc_dmabuf *dmabuf;
 struct lpfc_mqe *mqe;

 dmabuf = kzalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!dmabuf)
  return -ENOMEM;





 dma_size = *vpd_size;
 dmabuf->virt = dma_alloc_coherent(&phba->pcidev->dev, dma_size,
       &dmabuf->phys, GFP_KERNEL);
 if (!dmabuf->virt) {
  kfree(dmabuf);
  return -ENOMEM;
 }






 lpfc_read_rev(phba, mboxq);
 mqe = &mboxq->u.mqe;
 mqe->un.read_rev.vpd_paddr_high = putPaddrHigh(dmabuf->phys);
 mqe->un.read_rev.vpd_paddr_low = putPaddrLow(dmabuf->phys);
 mqe->un.read_rev.word1 &= 0x0000FFFF;
 bf_set(lpfc_mbx_rd_rev_vpd, &mqe->un.read_rev, 1);
 bf_set(lpfc_mbx_rd_rev_avail_len, &mqe->un.read_rev, dma_size);

 rc = lpfc_sli_issue_mbox(phba, mboxq, MBX_POLL);
 if (rc) {
  dma_free_coherent(&phba->pcidev->dev, dma_size,
      dmabuf->virt, dmabuf->phys);
  kfree(dmabuf);
  return -EIO;
 }






 if (mqe->un.read_rev.avail_vpd_len < *vpd_size)
  *vpd_size = mqe->un.read_rev.avail_vpd_len;

 memcpy(vpd, dmabuf->virt, *vpd_size);

 dma_free_coherent(&phba->pcidev->dev, dma_size,
     dmabuf->virt, dmabuf->phys);
 kfree(dmabuf);
 return 0;
}
