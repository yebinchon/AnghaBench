
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_nhi {TYPE_1__* pdev; scalar_t__ iobase; } ;
struct tb {struct tb_nhi* nhi; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 scalar_t__ REG_FW_STS ;
 int REG_FW_STS_NVM_AUTH_DONE ;
 int dev_err (int *,char*) ;
 int ioread32 (scalar_t__) ;
 int msleep (int) ;
 int nhi_mailbox_mode (struct tb_nhi*) ;

__attribute__((used)) static int icm_ar_get_mode(struct tb *tb)
{
 struct tb_nhi *nhi = tb->nhi;
 int retries = 60;
 u32 val;

 do {
  val = ioread32(nhi->iobase + REG_FW_STS);
  if (val & REG_FW_STS_NVM_AUTH_DONE)
   break;
  msleep(50);
 } while (--retries);

 if (!retries) {
  dev_err(&nhi->pdev->dev, "ICM firmware not authenticated\n");
  return -ENODEV;
 }

 return nhi_mailbox_mode(nhi);
}
