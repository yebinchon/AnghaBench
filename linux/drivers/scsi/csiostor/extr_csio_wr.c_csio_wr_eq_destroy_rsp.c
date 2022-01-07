
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mb {int dummy; } ;
struct csio_hw {int mb_mempool; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int EINVAL ;
 int FW_SUCCESS ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 int mempool_free (struct csio_mb*,int ) ;

__attribute__((used)) static int
csio_wr_eq_destroy_rsp(struct csio_hw *hw, struct csio_mb *mbp, int eq_idx)
{
 enum fw_retval retval = csio_mb_fw_retval(mbp);
 int rv = 0;

 if (retval != FW_SUCCESS)
  rv = -EINVAL;

 mempool_free(mbp, hw->mb_mempool);

 return rv;
}
