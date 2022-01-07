
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int NVR_BITOUT ;
 int NVR_CLOCK ;
 int NVR_SELECT ;
 unsigned long TRM_S1040_GEN_NVRAM ;
 int outb (int,unsigned long) ;
 int trms1040_wait_30us (unsigned long) ;

__attribute__((used)) static void trms1040_write_cmd(unsigned long io_port, u8 cmd, u8 addr)
{
 int i;
 u8 send_data;


 for (i = 0; i < 3; i++, cmd <<= 1) {
  send_data = NVR_SELECT;
  if (cmd & 0x04)
   send_data |= NVR_BITOUT;

  outb(send_data, io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);
  outb((send_data | NVR_CLOCK),
       io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);
 }


 for (i = 0; i < 7; i++, addr <<= 1) {
  send_data = NVR_SELECT;
  if (addr & 0x40)
   send_data |= NVR_BITOUT;

  outb(send_data, io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);
  outb((send_data | NVR_CLOCK),
       io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);
 }
 outb(NVR_SELECT, io_port + TRM_S1040_GEN_NVRAM);
 trms1040_wait_30us(io_port);
}
