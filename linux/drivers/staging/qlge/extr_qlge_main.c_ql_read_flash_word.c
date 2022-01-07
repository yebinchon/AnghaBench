
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;
typedef int __le32 ;


 int FLASH_ADDR ;
 int FLASH_ADDR_ERR ;
 int FLASH_ADDR_R ;
 int FLASH_ADDR_RDY ;
 int FLASH_DATA ;
 int cpu_to_le32 (int ) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_read_flash_word(struct ql_adapter *qdev, int offset, __le32 *data)
{
 int status = 0;

 status = ql_wait_reg_rdy(qdev,
   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
 if (status)
  goto exit;

 ql_write32(qdev, FLASH_ADDR, FLASH_ADDR_R | offset);

 status = ql_wait_reg_rdy(qdev,
   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
 if (status)
  goto exit;




 *data = cpu_to_le32(ql_read32(qdev, FLASH_DATA));
exit:
 return status;
}
