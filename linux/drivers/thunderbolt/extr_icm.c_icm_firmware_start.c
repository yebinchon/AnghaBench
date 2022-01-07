
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_nhi {scalar_t__ iobase; TYPE_1__* pdev; } ;
struct tb {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 scalar_t__ REG_FW_STS ;
 int REG_FW_STS_ICM_EN ;
 int REG_FW_STS_NVM_AUTH_DONE ;
 int dev_dbg (int *,char*) ;
 int icm_firmware_reset (struct tb*,struct tb_nhi*) ;
 int ioread32 (scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int icm_firmware_start(struct tb *tb, struct tb_nhi *nhi)
{
 unsigned int retries = 10;
 int ret;
 u32 val;


 val = ioread32(nhi->iobase + REG_FW_STS);
 if (val & REG_FW_STS_ICM_EN)
  return 0;

 dev_dbg(&nhi->pdev->dev, "starting ICM firmware\n");

 ret = icm_firmware_reset(tb, nhi);
 if (ret)
  return ret;


 do {

  val = ioread32(nhi->iobase + REG_FW_STS);
  if (val & REG_FW_STS_NVM_AUTH_DONE)
   return 0;

  msleep(300);
 } while (--retries);

 return -ETIMEDOUT;
}
