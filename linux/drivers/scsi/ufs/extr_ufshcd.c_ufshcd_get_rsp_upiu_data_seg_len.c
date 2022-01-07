
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dword_2; } ;
struct utp_upiu_rsp {TYPE_1__ header; } ;


 unsigned int MASK_RSP_UPIU_DATA_SEG_LEN ;
 unsigned int be32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int
ufshcd_get_rsp_upiu_data_seg_len(struct utp_upiu_rsp *ucd_rsp_ptr)
{
 return be32_to_cpu(ucd_rsp_ptr->header.dword_2) &
  MASK_RSP_UPIU_DATA_SEG_LEN;
}
