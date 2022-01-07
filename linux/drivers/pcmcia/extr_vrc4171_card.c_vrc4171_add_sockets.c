
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_6__ {int owner; int * ops; TYPE_1__ dev; } ;
struct vrc4171_socket {int slot; TYPE_3__ pcmcia_socket; int name; } ;
struct TYPE_5__ {int dev; } ;


 int CARD_MAX_SLOTS ;
 int CARD_SLOTB ;
 int GLOBAL_CONTROL ;
 int I365_ADDRWIN ;
 scalar_t__ SLOTB_IS_NONE ;
 int SLOT_INITIALIZED ;


 int SLOT_PROBE ;
 int THIS_MODULE ;
 int exca_read_byte (int,int ) ;
 int exca_write_byte (int,int ,int) ;
 int pcmcia_register_socket (TYPE_3__*) ;
 int reserve_using_irq (int) ;
 int sprintf (int ,char*,char) ;
 TYPE_2__ vrc4171_card_device ;
 int vrc4171_pccard_operations ;
 scalar_t__ vrc4171_slotb ;
 struct vrc4171_socket* vrc4171_sockets ;

__attribute__((used)) static int vrc4171_add_sockets(void)
{
 struct vrc4171_socket *socket;
 int slot, retval;

 for (slot = 0; slot < CARD_MAX_SLOTS; slot++) {
  if (slot == CARD_SLOTB && vrc4171_slotb == SLOTB_IS_NONE)
   continue;

  socket = &vrc4171_sockets[slot];
  if (socket->slot != SLOT_PROBE) {
   uint8_t addrwin;

   switch (socket->slot) {
   case 128:
    addrwin = exca_read_byte(slot, I365_ADDRWIN);
    addrwin &= 0x1f;
    exca_write_byte(slot, I365_ADDRWIN, addrwin);
    break;
   case 129:
    addrwin = exca_read_byte(slot, I365_ADDRWIN);
    addrwin &= 0xc0;
    exca_write_byte(slot, I365_ADDRWIN, addrwin);
    break;
   default:
    break;
   }

   reserve_using_irq(slot);
   continue;
  }

  sprintf(socket->name, "NEC VRC4171 Card Slot %1c", 'A' + slot);
  socket->pcmcia_socket.dev.parent = &vrc4171_card_device.dev;
  socket->pcmcia_socket.ops = &vrc4171_pccard_operations;
  socket->pcmcia_socket.owner = THIS_MODULE;

  retval = pcmcia_register_socket(&socket->pcmcia_socket);
  if (retval < 0)
   return retval;

  exca_write_byte(slot, I365_ADDRWIN, 0);
  exca_write_byte(slot, GLOBAL_CONTROL, 0);

  socket->slot = SLOT_INITIALIZED;
 }

 return 0;
}
