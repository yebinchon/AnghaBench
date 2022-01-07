
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct fw_scsi_abrt_cls_wr {int dummy; } ;
struct csio_wr_pair {scalar_t__ size1; void* addr1; void* addr2; } ;
struct csio_ioreq {int eq_idx; int drv_status; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
struct TYPE_2__ {struct csio_hw* hwp; } ;


 scalar_t__ ALIGN (int,int) ;
 int * csio_q_eq_wrap (struct csio_hw*,int ) ;
 int csio_scsi_init_abrt_cls_wr (struct csio_ioreq*,void*,scalar_t__,int) ;
 int csio_wr_get (struct csio_hw*,int ,scalar_t__,struct csio_wr_pair*) ;
 int memcpy (void*,int *,scalar_t__) ;

__attribute__((used)) static inline void
csio_scsi_abrt_cls(struct csio_ioreq *req, bool abort)
{
 struct csio_wr_pair wrp;
 struct csio_hw *hw = req->lnode->hwp;
 uint32_t size = ALIGN(sizeof(struct fw_scsi_abrt_cls_wr), 16);

 req->drv_status = csio_wr_get(hw, req->eq_idx, size, &wrp);
 if (req->drv_status != 0)
  return;

 if (wrp.size1 >= size) {

  csio_scsi_init_abrt_cls_wr(req, wrp.addr1, size, abort);
 } else {
  uint8_t *tmpwr = csio_q_eq_wrap(hw, req->eq_idx);




  csio_scsi_init_abrt_cls_wr(req, (void *)tmpwr, size, abort);
  memcpy(wrp.addr1, tmpwr, wrp.size1);
  memcpy(wrp.addr2, tmpwr + wrp.size1, size - wrp.size1);
 }
}
