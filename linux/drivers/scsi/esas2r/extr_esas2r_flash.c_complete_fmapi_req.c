
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct esas2r_request {int req_stat; int * interrupt_cb; scalar_t__ interrupt_cx; } ;
struct esas2r_flash_img {int driver_error; scalar_t__ status; } ;
struct esas2r_flash_context {int scratch; struct esas2r_flash_img* fi; } ;
struct esas2r_adapter {int flags; } ;


 int AF_FLASH_LOCK ;
 scalar_t__ FI_STAT_IMG_VER ;
 int FM_BUF_SZ ;
 int RS_SUCCESS ;
 int clear_bit (int ,int *) ;
 int esas2r_enable_heartbeat (struct esas2r_adapter*) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static bool complete_fmapi_req(struct esas2r_adapter *a,
          struct esas2r_request *rq, u8 fi_stat)
{
 struct esas2r_flash_context *fc =
  (struct esas2r_flash_context *)rq->interrupt_cx;
 struct esas2r_flash_img *fi = fc->fi;

 fi->status = fi_stat;
 fi->driver_error = rq->req_stat;
 rq->interrupt_cb = ((void*)0);
 rq->req_stat = RS_SUCCESS;

 if (fi_stat != FI_STAT_IMG_VER)
  memset(fc->scratch, 0, FM_BUF_SZ);

 esas2r_enable_heartbeat(a);
 clear_bit(AF_FLASH_LOCK, &a->flags);
 return 0;
}
