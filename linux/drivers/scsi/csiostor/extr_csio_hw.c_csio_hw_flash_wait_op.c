
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_hw {int dummy; } ;
typedef scalar_t__ int32_t ;


 int EAGAIN ;
 int SF_RD_STATUS ;
 int csio_hw_sf1_read (struct csio_hw*,int,int ,int,int*) ;
 int csio_hw_sf1_write (struct csio_hw*,int,int,int,int ) ;
 int msleep (scalar_t__) ;

__attribute__((used)) static int
csio_hw_flash_wait_op(struct csio_hw *hw, int32_t attempts, int32_t delay)
{
 int ret;
 uint32_t status;

 while (1) {
  ret = csio_hw_sf1_write(hw, 1, 1, 1, SF_RD_STATUS);
  if (ret != 0)
   return ret;

  ret = csio_hw_sf1_read(hw, 1, 0, 1, &status);
  if (ret != 0)
   return ret;

  if (!(status & 1))
   return 0;
  if (--attempts == 0)
   return -EAGAIN;
  if (delay)
   msleep(delay);
 }
}
