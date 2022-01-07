
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;


 unsigned int FLASH_CFG_START ;

__attribute__((used)) static unsigned int
csio_t5_flash_cfg_addr(struct csio_hw *hw)
{
 return FLASH_CFG_START;
}
