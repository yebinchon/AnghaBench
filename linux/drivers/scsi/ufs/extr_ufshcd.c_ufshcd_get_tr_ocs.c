
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ufshcd_lrb {TYPE_2__* utr_descriptor_ptr; } ;
struct TYPE_3__ {int dword_2; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int MASK_OCS ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int ufshcd_get_tr_ocs(struct ufshcd_lrb *lrbp)
{
 return le32_to_cpu(lrbp->utr_descriptor_ptr->header.dword_2) & MASK_OCS;
}
