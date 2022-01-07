
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_hba {TYPE_1__* pcidev; } ;
struct firmware {int size; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ ADD_STATUS_FW_NOT_SUPPORTED ;
 int KERN_ERR ;
 int LOG_INIT ;
 scalar_t__ MAGIC_NUMER_G6 ;
 scalar_t__ MAGIC_NUMER_G7 ;
 scalar_t__ PCI_DEVICE_ID_LANCER_G6_FC ;
 scalar_t__ PCI_DEVICE_ID_LANCER_G7_FC ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
lpfc_log_write_firmware_error(struct lpfc_hba *phba, uint32_t offset,
 uint32_t magic_number, uint32_t ftype, uint32_t fid, uint32_t fsize,
 const struct firmware *fw)
{
 if ((offset == ADD_STATUS_FW_NOT_SUPPORTED) ||
     (phba->pcidev->device == PCI_DEVICE_ID_LANCER_G6_FC &&
      magic_number != MAGIC_NUMER_G6) ||
     (phba->pcidev->device == PCI_DEVICE_ID_LANCER_G7_FC &&
      magic_number != MAGIC_NUMER_G7))
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "3030 This firmware version is not supported on "
   "this HBA model. Device:%x Magic:%x Type:%x "
   "ID:%x Size %d %zd\n",
   phba->pcidev->device, magic_number, ftype, fid,
   fsize, fw->size);
 else
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "3022 FW Download failed. Device:%x Magic:%x Type:%x "
   "ID:%x Size %d %zd\n",
   phba->pcidev->device, magic_number, ftype, fid,
   fsize, fw->size);
}
