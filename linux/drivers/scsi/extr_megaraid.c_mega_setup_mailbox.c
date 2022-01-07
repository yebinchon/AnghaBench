
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mbox_t ;
typedef int mbox64_t ;
struct TYPE_8__ {int una_mbox64_dma; int mbox_dma; int flag; TYPE_1__* host; TYPE_3__* una_mbox64; int * mbox; int * mbox64; int dev; } ;
typedef TYPE_2__ adapter_t ;
struct TYPE_9__ {int mbox; } ;
struct TYPE_7__ {scalar_t__ io_port; } ;


 int BOARD_IOMAP ;
 int ENABLE_MBOX_BYTE ;
 scalar_t__ ENABLE_MBOX_REGION ;
 scalar_t__ MBOX_PORT0 ;
 scalar_t__ MBOX_PORT1 ;
 scalar_t__ MBOX_PORT2 ;
 scalar_t__ MBOX_PORT3 ;
 int irq_ack (TYPE_2__*) ;
 int irq_enable (TYPE_2__*) ;
 int outb (int,scalar_t__) ;
 TYPE_3__* pci_alloc_consistent (int ,int,int*) ;

__attribute__((used)) static int
mega_setup_mailbox(adapter_t *adapter)
{
 unsigned long align;

 adapter->una_mbox64 = pci_alloc_consistent(adapter->dev,
   sizeof(mbox64_t), &adapter->una_mbox64_dma);

 if( !adapter->una_mbox64 ) return -1;

 adapter->mbox = &adapter->una_mbox64->mbox;

 adapter->mbox = (mbox_t *)((((unsigned long) adapter->mbox) + 15) &
   (~0UL ^ 0xFUL));

 adapter->mbox64 = (mbox64_t *)(((unsigned long)adapter->mbox) - 8);

 align = ((void *)adapter->mbox) - ((void *)&adapter->una_mbox64->mbox);

 adapter->mbox_dma = adapter->una_mbox64_dma + 8 + align;




 if( adapter->flag & BOARD_IOMAP ) {

  outb(adapter->mbox_dma & 0xFF,
    adapter->host->io_port + MBOX_PORT0);

  outb((adapter->mbox_dma >> 8) & 0xFF,
    adapter->host->io_port + MBOX_PORT1);

  outb((adapter->mbox_dma >> 16) & 0xFF,
    adapter->host->io_port + MBOX_PORT2);

  outb((adapter->mbox_dma >> 24) & 0xFF,
    adapter->host->io_port + MBOX_PORT3);

  outb(ENABLE_MBOX_BYTE,
    adapter->host->io_port + ENABLE_MBOX_REGION);

  irq_ack(adapter);

  irq_enable(adapter);
 }

 return 0;
}
