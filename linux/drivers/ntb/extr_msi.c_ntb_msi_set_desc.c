
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u64 ;
struct ntb_msi_desc {int data; scalar_t__ addr_offset; } ;
struct ntb_dev {TYPE_1__* msi; int dev; } ;
struct TYPE_4__ {scalar_t__ address_lo; int data; scalar_t__ address_hi; } ;
struct msi_desc {TYPE_2__ msg; int irq; } ;
struct TYPE_3__ {scalar_t__ base_addr; scalar_t__ end_addr; } ;


 int EFAULT ;
 int dev_warn_once (int *,char*,int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ntb_msi_set_desc(struct ntb_dev *ntb, struct msi_desc *entry,
       struct ntb_msi_desc *msi_desc)
{
 u64 addr;

 addr = entry->msg.address_lo +
  ((uint64_t)entry->msg.address_hi << 32);

 if (addr < ntb->msi->base_addr || addr >= ntb->msi->end_addr) {
  dev_warn_once(&ntb->dev,
         "IRQ %d: MSI Address not within the memory window (%llx, [%llx %llx])\n",
         entry->irq, addr, ntb->msi->base_addr,
         ntb->msi->end_addr);
  return -EFAULT;
 }

 msi_desc->addr_offset = addr - ntb->msi->base_addr;
 msi_desc->data = entry->msg.data;

 return 0;
}
