
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int mac_addr; } ;
struct TYPE_5__ {TYPE_1__ flash_params_8012; } ;
struct ql_adapter {TYPE_3__* ndev; TYPE_2__ flash; scalar_t__ port; } ;
struct flash_params_8012 {int dummy; } ;
typedef int __le32 ;
struct TYPE_6__ {int addr_len; int dev_addr; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int SEM_FLASH_MASK ;
 int ifup ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int netif_err (struct ql_adapter*,int ,TYPE_3__*,char*) ;
 int ql_read_flash_word (struct ql_adapter*,int,int *) ;
 scalar_t__ ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_validate_flash (struct ql_adapter*,int,char*) ;

__attribute__((used)) static int ql_get_8012_flash_params(struct ql_adapter *qdev)
{
 int i;
 int status;
 __le32 *p = (__le32 *)&qdev->flash;
 u32 offset = 0;
 u32 size = sizeof(struct flash_params_8012) / sizeof(u32);




 if (qdev->port)
  offset = size;

 if (ql_sem_spinlock(qdev, SEM_FLASH_MASK))
  return -ETIMEDOUT;

 for (i = 0; i < size; i++, p++) {
  status = ql_read_flash_word(qdev, i+offset, p);
  if (status) {
   netif_err(qdev, ifup, qdev->ndev,
      "Error reading flash.\n");
   goto exit;
  }

 }

 status = ql_validate_flash(qdev,
   sizeof(struct flash_params_8012) / sizeof(u16),
   "8012");
 if (status) {
  netif_err(qdev, ifup, qdev->ndev, "Invalid flash.\n");
  status = -EINVAL;
  goto exit;
 }

 if (!is_valid_ether_addr(qdev->flash.flash_params_8012.mac_addr)) {
  status = -EINVAL;
  goto exit;
 }

 memcpy(qdev->ndev->dev_addr,
  qdev->flash.flash_params_8012.mac_addr,
  qdev->ndev->addr_len);

exit:
 ql_sem_unlock(qdev, SEM_FLASH_MASK);
 return status;
}
