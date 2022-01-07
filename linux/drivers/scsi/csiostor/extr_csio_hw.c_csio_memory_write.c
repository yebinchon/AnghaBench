
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct csio_hw {TYPE_1__* chip_ops; } ;
struct TYPE_2__ {int (* chip_memory_rw ) (struct csio_hw*,int ,int,int ,int ,int *,int ) ;} ;


 int MEMWIN_CSIOSTOR ;
 int stub1 (struct csio_hw*,int ,int,int ,int ,int *,int ) ;

__attribute__((used)) static int
csio_memory_write(struct csio_hw *hw, int mtype, u32 addr, u32 len, u32 *buf)
{
 return hw->chip_ops->chip_memory_rw(hw, MEMWIN_CSIOSTOR, mtype,
         addr, len, buf, 0);
}
