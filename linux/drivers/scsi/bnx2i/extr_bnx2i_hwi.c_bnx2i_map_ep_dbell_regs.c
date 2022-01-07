
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {void* ctx_base; } ;
struct bnx2i_endpoint {TYPE_1__ qp; TYPE_2__* hba; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_4__ {scalar_t__ mail_queue_access; scalar_t__ reg_base; int cnic_dev_type; int pcidev; } ;


 int BNX2I_570X_PAGE_SIZE_DEFAULT ;
 scalar_t__ BNX2I_MQ_BIN_MODE ;
 int BNX2I_NX2_DEV_5709 ;
 int BNX2I_NX2_DEV_57710 ;
 int BNX2X_DB_SHIFT ;
 int BNX2X_DOORBELL_PCI_BAR ;
 int BNX2_MQ_CONFIG2 ;
 int BNX2_MQ_CONFIG2_CONT_SZ ;
 int BNX2_MQ_CONFIG2_FIRST_L4L5 ;
 int CNIC_ARM_CQE ;
 int CTX_OFFSET ;
 int ENOMEM ;
 int MAX_CID_CNT ;
 int MB_KERNEL_CTX_SIZE ;
 int REG_RD (TYPE_2__*,int ) ;
 int bnx2i_arm_cq_event_coalescing (struct bnx2i_endpoint*,int ) ;
 int bnx2i_get_cid_num (struct bnx2i_endpoint*) ;
 void* ioremap_nocache (scalar_t__,int) ;
 scalar_t__ pci_resource_start (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int bnx2i_map_ep_dbell_regs(struct bnx2i_endpoint *ep)
{
 u32 cid_num;
 u32 reg_off;
 u32 first_l4l5;
 u32 ctx_sz;
 u32 config2;
 resource_size_t reg_base;

 cid_num = bnx2i_get_cid_num(ep);

 if (test_bit(BNX2I_NX2_DEV_57710, &ep->hba->cnic_dev_type)) {
  reg_base = pci_resource_start(ep->hba->pcidev,
           BNX2X_DOORBELL_PCI_BAR);
  reg_off = (1 << BNX2X_DB_SHIFT) * (cid_num & 0x1FFFF);
  ep->qp.ctx_base = ioremap_nocache(reg_base + reg_off, 4);
  if (!ep->qp.ctx_base)
   return -ENOMEM;
  goto arm_cq;
 }

 if ((test_bit(BNX2I_NX2_DEV_5709, &ep->hba->cnic_dev_type)) &&
     (ep->hba->mail_queue_access == BNX2I_MQ_BIN_MODE)) {
  config2 = REG_RD(ep->hba, BNX2_MQ_CONFIG2);
  first_l4l5 = config2 & BNX2_MQ_CONFIG2_FIRST_L4L5;
  ctx_sz = (config2 & BNX2_MQ_CONFIG2_CONT_SZ) >> 3;
  if (ctx_sz)
   reg_off = CTX_OFFSET + MAX_CID_CNT * MB_KERNEL_CTX_SIZE
      + BNX2I_570X_PAGE_SIZE_DEFAULT *
      (((cid_num - first_l4l5) / ctx_sz) + 256);
  else
   reg_off = CTX_OFFSET + (MB_KERNEL_CTX_SIZE * cid_num);
 } else

  reg_off = CTX_OFFSET + (MB_KERNEL_CTX_SIZE * cid_num);

 ep->qp.ctx_base = ioremap_nocache(ep->hba->reg_base + reg_off,
       MB_KERNEL_CTX_SIZE);
 if (!ep->qp.ctx_base)
  return -ENOMEM;

arm_cq:
 bnx2i_arm_cq_event_coalescing(ep, CNIC_ARM_CQE);
 return 0;
}
