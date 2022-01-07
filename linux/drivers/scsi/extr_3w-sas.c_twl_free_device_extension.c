
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * event_queue; int * sense_buffer_phys; scalar_t__* sense_buffer_virt; TYPE_1__* tw_pci_dev; int * generic_buffer_phys; scalar_t__* generic_buffer_virt; int * command_packet_phys; scalar_t__* command_packet_virt; } ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_2__ TW_Device_Extension ;
typedef int TW_Command_Full ;
typedef int TW_Command_Apache_Header ;


 int TW_Q_LENGTH ;
 int TW_SECTOR_SIZE ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void twl_free_device_extension(TW_Device_Extension *tw_dev)
{
 if (tw_dev->command_packet_virt[0])
  dma_free_coherent(&tw_dev->tw_pci_dev->dev,
        sizeof(TW_Command_Full)*TW_Q_LENGTH,
        tw_dev->command_packet_virt[0],
        tw_dev->command_packet_phys[0]);

 if (tw_dev->generic_buffer_virt[0])
  dma_free_coherent(&tw_dev->tw_pci_dev->dev,
        TW_SECTOR_SIZE*TW_Q_LENGTH,
        tw_dev->generic_buffer_virt[0],
        tw_dev->generic_buffer_phys[0]);

 if (tw_dev->sense_buffer_virt[0])
  dma_free_coherent(&tw_dev->tw_pci_dev->dev,
        sizeof(TW_Command_Apache_Header)*
        TW_Q_LENGTH,
        tw_dev->sense_buffer_virt[0],
        tw_dev->sense_buffer_phys[0]);

 kfree(tw_dev->event_queue[0]);
}
