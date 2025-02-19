
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* region; } ;
struct pm8001_hba_info {int flags; int tags_num; TYPE_5__* ccb_info; TYPE_4__ memoryMap; TYPE_5__* devices; int pdev; int tags; TYPE_2__* port; TYPE_1__* chip; int bitmap_lock; int lock; } ;
struct pm8001_device {int dummy; } ;
struct pm8001_ccb_info {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct TYPE_10__ {int id; int device_id; int ccb_tag; int * device; int * task; scalar_t__ ccb_dma_handle; scalar_t__ running_req; int dev_type; } ;
struct TYPE_8__ {int num_elements; int element_size; int total_len; int alignment; int phys_addr; TYPE_5__* virt_ptr; int phys_addr_lo; int phys_addr_hi; } ;
struct TYPE_7__ {int list; scalar_t__ port_state; scalar_t__ port_attached; scalar_t__ wide_port_phymap; } ;
struct TYPE_6__ {int n_phy; } ;


 size_t AAP1 ;
 size_t CCB_MEM ;
 int CI ;
 size_t DEV_MEM ;
 size_t FORENSIC_MEM ;
 size_t FW_FLASH ;
 int GFP_KERNEL ;
 int IB ;
 int INIT_LIST_HEAD (int *) ;
 size_t IOP ;
 size_t NVMD ;
 int OB ;
 int PI ;
 int PM8001F_INIT_TIME ;
 void* PM8001_EVENT_LOG_SIZE ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_MAX_CCB ;
 int PM8001_MAX_DEVICES ;
 int PM8001_MAX_SPCV_INB_NUM ;
 int PM8001_MAX_SPCV_OUTB_NUM ;
 int PM8001_MPI_QUEUE ;
 int SAS_PHY_UNUSED ;
 int USI_MAX_MEMCNT ;
 scalar_t__ chip_8001 ;
 int kzalloc (int,int ) ;
 scalar_t__ pm8001_mem_alloc (int ,TYPE_5__**,int *,int *,int *,int,int) ;
 int pm8001_phy_init (struct pm8001_hba_info*,int) ;
 int pm8001_printk (char*,int) ;
 int pm8001_tag_init (struct pm8001_hba_info*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pm8001_alloc(struct pm8001_hba_info *pm8001_ha,
   const struct pci_device_id *ent)
{
 int i;
 spin_lock_init(&pm8001_ha->lock);
 spin_lock_init(&pm8001_ha->bitmap_lock);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("pm8001_alloc: PHY:%x\n",
    pm8001_ha->chip->n_phy));
 for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
  pm8001_phy_init(pm8001_ha, i);
  pm8001_ha->port[i].wide_port_phymap = 0;
  pm8001_ha->port[i].port_attached = 0;
  pm8001_ha->port[i].port_state = 0;
  INIT_LIST_HEAD(&pm8001_ha->port[i].list);
 }

 pm8001_ha->tags = kzalloc(PM8001_MAX_CCB, GFP_KERNEL);
 if (!pm8001_ha->tags)
  goto err_out;

 pm8001_ha->memoryMap.region[AAP1].num_elements = 1;
 pm8001_ha->memoryMap.region[AAP1].element_size = PM8001_EVENT_LOG_SIZE;
 pm8001_ha->memoryMap.region[AAP1].total_len = PM8001_EVENT_LOG_SIZE;
 pm8001_ha->memoryMap.region[AAP1].alignment = 32;


 pm8001_ha->memoryMap.region[IOP].num_elements = 1;
 pm8001_ha->memoryMap.region[IOP].element_size = PM8001_EVENT_LOG_SIZE;
 pm8001_ha->memoryMap.region[IOP].total_len = PM8001_EVENT_LOG_SIZE;
 pm8001_ha->memoryMap.region[IOP].alignment = 32;

 for (i = 0; i < PM8001_MAX_SPCV_INB_NUM; i++) {

  pm8001_ha->memoryMap.region[CI+i].num_elements = 1;
  pm8001_ha->memoryMap.region[CI+i].element_size = 4;
  pm8001_ha->memoryMap.region[CI+i].total_len = 4;
  pm8001_ha->memoryMap.region[CI+i].alignment = 4;

  if ((ent->driver_data) != chip_8001) {

   pm8001_ha->memoryMap.region[IB+i].num_elements =
      PM8001_MPI_QUEUE;
   pm8001_ha->memoryMap.region[IB+i].element_size = 128;
   pm8001_ha->memoryMap.region[IB+i].total_len =
      PM8001_MPI_QUEUE * 128;
   pm8001_ha->memoryMap.region[IB+i].alignment = 128;
  } else {
   pm8001_ha->memoryMap.region[IB+i].num_elements =
      PM8001_MPI_QUEUE;
   pm8001_ha->memoryMap.region[IB+i].element_size = 64;
   pm8001_ha->memoryMap.region[IB+i].total_len =
      PM8001_MPI_QUEUE * 64;
   pm8001_ha->memoryMap.region[IB+i].alignment = 64;
  }
 }

 for (i = 0; i < PM8001_MAX_SPCV_OUTB_NUM; i++) {

  pm8001_ha->memoryMap.region[PI+i].num_elements = 1;
  pm8001_ha->memoryMap.region[PI+i].element_size = 4;
  pm8001_ha->memoryMap.region[PI+i].total_len = 4;
  pm8001_ha->memoryMap.region[PI+i].alignment = 4;

  if (ent->driver_data != chip_8001) {

   pm8001_ha->memoryMap.region[OB+i].num_elements =
      PM8001_MPI_QUEUE;
   pm8001_ha->memoryMap.region[OB+i].element_size = 128;
   pm8001_ha->memoryMap.region[OB+i].total_len =
      PM8001_MPI_QUEUE * 128;
   pm8001_ha->memoryMap.region[OB+i].alignment = 128;
  } else {

   pm8001_ha->memoryMap.region[OB+i].num_elements =
      PM8001_MPI_QUEUE;
   pm8001_ha->memoryMap.region[OB+i].element_size = 64;
   pm8001_ha->memoryMap.region[OB+i].total_len =
      PM8001_MPI_QUEUE * 64;
   pm8001_ha->memoryMap.region[OB+i].alignment = 64;
  }

 }

 pm8001_ha->memoryMap.region[NVMD].num_elements = 1;
 pm8001_ha->memoryMap.region[NVMD].element_size = 4096;
 pm8001_ha->memoryMap.region[NVMD].total_len = 4096;

 pm8001_ha->memoryMap.region[DEV_MEM].num_elements = 1;
 pm8001_ha->memoryMap.region[DEV_MEM].element_size = PM8001_MAX_DEVICES *
  sizeof(struct pm8001_device);
 pm8001_ha->memoryMap.region[DEV_MEM].total_len = PM8001_MAX_DEVICES *
  sizeof(struct pm8001_device);


 pm8001_ha->memoryMap.region[CCB_MEM].num_elements = 1;
 pm8001_ha->memoryMap.region[CCB_MEM].element_size = PM8001_MAX_CCB *
  sizeof(struct pm8001_ccb_info);
 pm8001_ha->memoryMap.region[CCB_MEM].total_len = PM8001_MAX_CCB *
  sizeof(struct pm8001_ccb_info);


 pm8001_ha->memoryMap.region[FW_FLASH].total_len = 4096;

 pm8001_ha->memoryMap.region[FORENSIC_MEM].num_elements = 1;
 pm8001_ha->memoryMap.region[FORENSIC_MEM].total_len = 0x10000;
 pm8001_ha->memoryMap.region[FORENSIC_MEM].element_size = 0x10000;
 pm8001_ha->memoryMap.region[FORENSIC_MEM].alignment = 0x10000;
 for (i = 0; i < USI_MAX_MEMCNT; i++) {
  if (pm8001_mem_alloc(pm8001_ha->pdev,
   &pm8001_ha->memoryMap.region[i].virt_ptr,
   &pm8001_ha->memoryMap.region[i].phys_addr,
   &pm8001_ha->memoryMap.region[i].phys_addr_hi,
   &pm8001_ha->memoryMap.region[i].phys_addr_lo,
   pm8001_ha->memoryMap.region[i].total_len,
   pm8001_ha->memoryMap.region[i].alignment) != 0) {
    PM8001_FAIL_DBG(pm8001_ha,
     pm8001_printk("Mem%d alloc failed\n",
     i));
    goto err_out;
  }
 }

 pm8001_ha->devices = pm8001_ha->memoryMap.region[DEV_MEM].virt_ptr;
 for (i = 0; i < PM8001_MAX_DEVICES; i++) {
  pm8001_ha->devices[i].dev_type = SAS_PHY_UNUSED;
  pm8001_ha->devices[i].id = i;
  pm8001_ha->devices[i].device_id = PM8001_MAX_DEVICES;
  pm8001_ha->devices[i].running_req = 0;
 }
 pm8001_ha->ccb_info = pm8001_ha->memoryMap.region[CCB_MEM].virt_ptr;
 for (i = 0; i < PM8001_MAX_CCB; i++) {
  pm8001_ha->ccb_info[i].ccb_dma_handle =
   pm8001_ha->memoryMap.region[CCB_MEM].phys_addr +
   i * sizeof(struct pm8001_ccb_info);
  pm8001_ha->ccb_info[i].task = ((void*)0);
  pm8001_ha->ccb_info[i].ccb_tag = 0xffffffff;
  pm8001_ha->ccb_info[i].device = ((void*)0);
  ++pm8001_ha->tags_num;
 }
 pm8001_ha->flags = PM8001F_INIT_TIME;

 pm8001_tag_init(pm8001_ha);
 return 0;
err_out:
 return 1;
}
