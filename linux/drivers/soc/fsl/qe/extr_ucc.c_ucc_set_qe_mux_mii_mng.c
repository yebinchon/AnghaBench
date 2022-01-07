
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmxgcr; } ;
struct TYPE_4__ {TYPE_1__ qmx; } ;


 int EINVAL ;
 int QE_CMXGCR_MII_ENET_MNG ;
 unsigned int QE_CMXGCR_MII_ENET_MNG_SHIFT ;
 int UCC_MAX_NUM ;
 int clrsetbits_be32 (int *,int ,unsigned int) ;
 int cmxgcr_lock ;
 TYPE_2__* qe_immr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ucc_set_qe_mux_mii_mng(unsigned int ucc_num)
{
 unsigned long flags;

 if (ucc_num > UCC_MAX_NUM - 1)
  return -EINVAL;

 spin_lock_irqsave(&cmxgcr_lock, flags);
 clrsetbits_be32(&qe_immr->qmx.cmxgcr, QE_CMXGCR_MII_ENET_MNG,
  ucc_num << QE_CMXGCR_MII_ENET_MNG_SHIFT);
 spin_unlock_irqrestore(&cmxgcr_lock, flags);

 return 0;
}
