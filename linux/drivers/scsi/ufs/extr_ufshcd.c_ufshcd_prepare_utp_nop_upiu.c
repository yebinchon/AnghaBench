
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct utp_upiu_rsp {int dummy; } ;
struct TYPE_2__ {scalar_t__ dword_2; scalar_t__ dword_1; int dword_0; } ;
struct utp_upiu_req {TYPE_1__ header; } ;
struct ufshcd_lrb {struct utp_upiu_req* ucd_rsp_ptr; int task_tag; struct utp_upiu_req* ucd_req_ptr; } ;


 int UPIU_HEADER_DWORD (int ,int ,int ,int ) ;
 int UPIU_TRANSACTION_NOP_OUT ;
 int memset (struct utp_upiu_req*,int ,int) ;

__attribute__((used)) static inline void ufshcd_prepare_utp_nop_upiu(struct ufshcd_lrb *lrbp)
{
 struct utp_upiu_req *ucd_req_ptr = lrbp->ucd_req_ptr;

 memset(ucd_req_ptr, 0, sizeof(struct utp_upiu_req));


 ucd_req_ptr->header.dword_0 =
  UPIU_HEADER_DWORD(
   UPIU_TRANSACTION_NOP_OUT, 0, 0, lrbp->task_tag);

 ucd_req_ptr->header.dword_1 = 0;
 ucd_req_ptr->header.dword_2 = 0;

 memset(lrbp->ucd_rsp_ptr, 0, sizeof(struct utp_upiu_rsp));
}
