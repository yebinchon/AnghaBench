
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dword_2; } ;
struct utp_upiu_rsp {TYPE_1__ header; } ;


 int MASK_RSP_EXCEPTION_EVENT ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline bool ufshcd_is_exception_event(struct utp_upiu_rsp *ucd_rsp_ptr)
{
 return be32_to_cpu(ucd_rsp_ptr->header.dword_2) &
   MASK_RSP_EXCEPTION_EVENT ? 1 : 0;
}
