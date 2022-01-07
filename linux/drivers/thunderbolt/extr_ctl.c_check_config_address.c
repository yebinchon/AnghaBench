
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tb_cfg_address {int space; scalar_t__ offset; scalar_t__ length; int zero; } ;
typedef enum tb_cfg_space { ____Placeholder_tb_cfg_space } tb_cfg_space ;


 int EIO ;
 scalar_t__ WARN (int,char*,scalar_t__,...) ;

__attribute__((used)) static int check_config_address(struct tb_cfg_address addr,
    enum tb_cfg_space space, u32 offset,
    u32 length)
{
 if (WARN(addr.zero, "addr.zero is %#x\n", addr.zero))
  return -EIO;
 if (WARN(space != addr.space, "wrong space (expected %x, got %x\n)",
   space, addr.space))
  return -EIO;
 if (WARN(offset != addr.offset, "wrong offset (expected %x, got %x\n)",
   offset, addr.offset))
  return -EIO;
 if (WARN(length != addr.length, "wrong space (expected %x, got %x\n)",
   length, addr.length))
  return -EIO;




 return 0;
}
