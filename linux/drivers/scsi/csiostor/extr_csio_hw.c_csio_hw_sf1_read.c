
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_hw {int dummy; } ;
typedef int int32_t ;


 int BYTECNT_V (int) ;
 int EBUSY ;
 int EINVAL ;
 int SF_ATTEMPTS ;
 int SF_BUSY_F ;
 int SF_CONT_V (int ) ;
 int SF_DATA_A ;
 int SF_LOCK_V (int ) ;
 int SF_OP_A ;
 int csio_hw_wait_op_done_val (struct csio_hw*,int ,int,int ,int ,int,int *) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;

__attribute__((used)) static int
csio_hw_sf1_read(struct csio_hw *hw, uint32_t byte_cnt, int32_t cont,
   int32_t lock, uint32_t *valp)
{
 int ret;

 if (!byte_cnt || byte_cnt > 4)
  return -EINVAL;
 if (csio_rd_reg32(hw, SF_OP_A) & SF_BUSY_F)
  return -EBUSY;

 csio_wr_reg32(hw, SF_LOCK_V(lock) | SF_CONT_V(cont) |
        BYTECNT_V(byte_cnt - 1), SF_OP_A);
 ret = csio_hw_wait_op_done_val(hw, SF_OP_A, SF_BUSY_F, 0, SF_ATTEMPTS,
           10, ((void*)0));
 if (!ret)
  *valp = csio_rd_reg32(hw, SF_DATA_A);
 return ret;
}
