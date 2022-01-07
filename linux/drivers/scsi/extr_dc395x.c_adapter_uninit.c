
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterCtlBlk {int io_port_len; scalar_t__ io_port_base; scalar_t__ irq_level; int scsi_host; int selto_timer; int waiting_timer; } ;


 int DC395x_LOCK_IO (int ,unsigned long) ;
 int DC395x_UNLOCK_IO (int ,unsigned long) ;
 int adapter_remove_and_free_all_devices (struct AdapterCtlBlk*) ;
 int adapter_sg_tables_free (struct AdapterCtlBlk*) ;
 int adapter_uninit_chip (struct AdapterCtlBlk*) ;
 int del_timer (int *) ;
 int free_irq (scalar_t__,struct AdapterCtlBlk*) ;
 int release_region (scalar_t__,int ) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void adapter_uninit(struct AdapterCtlBlk *acb)
{
 unsigned long flags;
 DC395x_LOCK_IO(acb->scsi_host, flags);


 if (timer_pending(&acb->waiting_timer))
  del_timer(&acb->waiting_timer);
 if (timer_pending(&acb->selto_timer))
  del_timer(&acb->selto_timer);

 adapter_uninit_chip(acb);
 adapter_remove_and_free_all_devices(acb);
 DC395x_UNLOCK_IO(acb->scsi_host, flags);

 if (acb->irq_level)
  free_irq(acb->irq_level, acb);
 if (acb->io_port_base)
  release_region(acb->io_port_base, acb->io_port_len);

 adapter_sg_tables_free(acb);
}
