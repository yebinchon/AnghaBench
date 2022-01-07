
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int shost; int vdev; } ;
typedef enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;


 int SNIC_HOST_ERR (int ,char*,int) ;
 int SNIC_MSIX_ERR_NOTIFY ;
 int VNIC_DEV_INTR_MODE_MSIX ;
 int svnic_dev_get_intr_mode (int ) ;
 int svnic_dev_notify_set (int ,int ) ;

__attribute__((used)) static int
snic_notify_set(struct snic *snic)
{
 int ret = 0;
 enum vnic_dev_intr_mode intr_mode;

 intr_mode = svnic_dev_get_intr_mode(snic->vdev);

 if (intr_mode == VNIC_DEV_INTR_MODE_MSIX) {
  ret = svnic_dev_notify_set(snic->vdev, SNIC_MSIX_ERR_NOTIFY);
 } else {
  SNIC_HOST_ERR(snic->shost,
         "Interrupt mode should be setup before devcmd notify set %d\n",
         intr_mode);
  ret = -1;
 }

 return ret;
}
