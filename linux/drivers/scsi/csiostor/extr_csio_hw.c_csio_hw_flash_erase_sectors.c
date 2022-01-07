
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;
typedef int int32_t ;


 int SF_ERASE_SECTOR ;
 int SF_OP_A ;
 int SF_WR_ENABLE ;
 int csio_err (struct csio_hw*,char*,int,int) ;
 int csio_hw_flash_wait_op (struct csio_hw*,int,int) ;
 int csio_hw_sf1_write (struct csio_hw*,int,int ,int,int) ;
 int csio_wr_reg32 (struct csio_hw*,int ,int ) ;

__attribute__((used)) static int
csio_hw_flash_erase_sectors(struct csio_hw *hw, int32_t start, int32_t end)
{
 int ret = 0;

 while (start <= end) {

  ret = csio_hw_sf1_write(hw, 1, 0, 1, SF_WR_ENABLE);
  if (ret != 0)
   goto out;

  ret = csio_hw_sf1_write(hw, 4, 0, 1,
     SF_ERASE_SECTOR | (start << 8));
  if (ret != 0)
   goto out;

  ret = csio_hw_flash_wait_op(hw, 14, 500);
  if (ret != 0)
   goto out;

  start++;
 }
out:
 if (ret)
  csio_err(hw, "erase of flash sector %d failed, error %d\n",
    start, ret);
 csio_wr_reg32(hw, 0, SF_OP_A);
 return 0;
}
