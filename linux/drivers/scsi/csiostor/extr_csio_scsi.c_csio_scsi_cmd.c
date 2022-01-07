
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct csio_wr_pair {scalar_t__ size1; void* addr1; void* addr2; } ;
struct csio_scsim {int proto_cmd_len; } ;
struct csio_ioreq {int eq_idx; int drv_status; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
struct TYPE_2__ {struct csio_hw* hwp; } ;


 scalar_t__ CSIO_SCSI_CMD_WR_SZ_16 (int ) ;
 struct csio_scsim* csio_hw_to_scsim (struct csio_hw*) ;
 int * csio_q_eq_wrap (struct csio_hw*,int ) ;
 int csio_scsi_init_cmd_wr (struct csio_ioreq*,void*,scalar_t__) ;
 int csio_wr_get (struct csio_hw*,int ,scalar_t__,struct csio_wr_pair*) ;
 int memcpy (void*,int *,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
csio_scsi_cmd(struct csio_ioreq *req)
{
 struct csio_wr_pair wrp;
 struct csio_hw *hw = req->lnode->hwp;
 struct csio_scsim *scsim = csio_hw_to_scsim(hw);
 uint32_t size = CSIO_SCSI_CMD_WR_SZ_16(scsim->proto_cmd_len);

 req->drv_status = csio_wr_get(hw, req->eq_idx, size, &wrp);
 if (unlikely(req->drv_status != 0))
  return;

 if (wrp.size1 >= size) {

  csio_scsi_init_cmd_wr(req, wrp.addr1, size);
 } else {
  uint8_t *tmpwr = csio_q_eq_wrap(hw, req->eq_idx);





  csio_scsi_init_cmd_wr(req, (void *)tmpwr, size);
  memcpy(wrp.addr1, tmpwr, wrp.size1);
  memcpy(wrp.addr2, tmpwr + wrp.size1, size - wrp.size1);
 }
}
