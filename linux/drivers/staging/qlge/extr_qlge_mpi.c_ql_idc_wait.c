
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_params {int* mbox_out; } ;
struct ql_adapter {int ndev; int ide_completion; struct mbox_params idc_mbc; } ;


 int AEN_IDC_CMPLT ;
 int AEN_IDC_EXT ;
 int EIO ;
 int ETIMEDOUT ;
 int HZ ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*,...) ;
 long wait_for_completion_timeout (int *,long) ;

__attribute__((used)) static int ql_idc_wait(struct ql_adapter *qdev)
{
 int status = -ETIMEDOUT;
 long wait_time = 1 * HZ;
 struct mbox_params *mbcp = &qdev->idc_mbc;
 do {



  wait_time =
   wait_for_completion_timeout(&qdev->ide_completion,
       wait_time);
  if (!wait_time) {
   netif_err(qdev, drv, qdev->ndev, "IDC Timeout.\n");
   break;
  }




  if (mbcp->mbox_out[0] == AEN_IDC_EXT) {
   netif_err(qdev, drv, qdev->ndev,
      "IDC Time Extension from function.\n");
   wait_time += (mbcp->mbox_out[1] >> 8) & 0x0000000f;
  } else if (mbcp->mbox_out[0] == AEN_IDC_CMPLT) {
   netif_err(qdev, drv, qdev->ndev, "IDC Success.\n");
   status = 0;
   break;
  } else {
   netif_err(qdev, drv, qdev->ndev,
      "IDC: Invalid State 0x%.04x.\n",
      mbcp->mbox_out[0]);
   status = -EIO;
   break;
  }
 } while (wait_time);

 return status;
}
