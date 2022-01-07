
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


 scalar_t__ ALIGN (scalar_t__,int) ;
 int CSIO_SCSI_DATA_WRSZ (struct csio_ioreq*,int ,scalar_t__,int ) ;
 struct csio_scsim* csio_hw_to_scsim (struct csio_hw*) ;
 int * csio_q_eq_wrap (struct csio_hw*,int ) ;
 int csio_scsi_init_write_wr (struct csio_ioreq*,void*,scalar_t__) ;
 int csio_wr_get (struct csio_hw*,int ,scalar_t__,struct csio_wr_pair*) ;
 scalar_t__ likely (int) ;
 int memcpy (void*,int *,scalar_t__) ;
 int write ;

__attribute__((used)) static inline void
csio_scsi_write(struct csio_ioreq *req)
{
 struct csio_wr_pair wrp;
 uint32_t size;
 struct csio_hw *hw = req->lnode->hwp;
 struct csio_scsim *scsim = csio_hw_to_scsim(hw);

 CSIO_SCSI_DATA_WRSZ(req, write, size, scsim->proto_cmd_len);
 size = ALIGN(size, 16);

 req->drv_status = csio_wr_get(hw, req->eq_idx, size, &wrp);
 if (likely(req->drv_status == 0)) {
  if (likely(wrp.size1 >= size)) {

   csio_scsi_init_write_wr(req, wrp.addr1, size);
  } else {
   uint8_t *tmpwr = csio_q_eq_wrap(hw, req->eq_idx);




   csio_scsi_init_write_wr(req, (void *)tmpwr, size);
   memcpy(wrp.addr1, tmpwr, wrp.size1);
   memcpy(wrp.addr2, tmpwr + wrp.size1, size - wrp.size1);
  }
 }
}
