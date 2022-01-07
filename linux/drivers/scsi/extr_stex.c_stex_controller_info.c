
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct st_hba {TYPE_3__* pdev; struct st_frame* copy_buffer; } ;
struct TYPE_4__ {int build; int oem; int minor; int major; } ;
struct st_frame {int id; int subid; int irq_vec; scalar_t__ irq_level; int slot; int bus; TYPE_1__ drv_ver; scalar_t__ rom_addr; scalar_t__ base; } ;
struct st_ccb {int cmd; } ;
struct TYPE_6__ {int vendor; int device; int subsystem_vendor; int subsystem_device; int irq; int devfn; TYPE_2__* bus; } ;
struct TYPE_5__ {int number; } ;


 int ST_BUILD_VER ;
 int ST_OEM ;
 int ST_VER_MAJOR ;
 int ST_VER_MINOR ;
 int memset (scalar_t__,int ,int) ;
 unsigned long pci_resource_start (TYPE_3__*,int ) ;
 int scsi_sg_copy_from_buffer (int ,struct st_frame*,size_t) ;
 int scsi_sg_copy_to_buffer (int ,struct st_frame*,size_t) ;

__attribute__((used)) static void stex_controller_info(struct st_hba *hba, struct st_ccb *ccb)
{
 struct st_frame *p;
 size_t count = sizeof(struct st_frame);

 p = hba->copy_buffer;
 scsi_sg_copy_to_buffer(ccb->cmd, p, count);
 memset(p->base, 0, sizeof(u32)*6);
 *(unsigned long *)(p->base) = pci_resource_start(hba->pdev, 0);
 p->rom_addr = 0;

 p->drv_ver.major = ST_VER_MAJOR;
 p->drv_ver.minor = ST_VER_MINOR;
 p->drv_ver.oem = ST_OEM;
 p->drv_ver.build = ST_BUILD_VER;

 p->bus = hba->pdev->bus->number;
 p->slot = hba->pdev->devfn;
 p->irq_level = 0;
 p->irq_vec = hba->pdev->irq;
 p->id = hba->pdev->vendor << 16 | hba->pdev->device;
 p->subid =
  hba->pdev->subsystem_vendor << 16 | hba->pdev->subsystem_device;

 scsi_sg_copy_from_buffer(ccb->cmd, p, count);
}
