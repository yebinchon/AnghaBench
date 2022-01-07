
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int NVR_BITIN ;
 int NVR_BITOUT ;
 int NVR_CLOCK ;
 int NVR_SELECT ;
 unsigned long TRM_S1040_GEN_NVRAM ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;
 int trms1040_wait_30us (unsigned long) ;
 int trms1040_write_cmd (unsigned long,int,int) ;

__attribute__((used)) static void trms1040_set_data(unsigned long io_port, u8 addr, u8 byte)
{
 int i;
 u8 send_data;


 trms1040_write_cmd(io_port, 0x05, addr);


 for (i = 0; i < 8; i++, byte <<= 1) {
  send_data = NVR_SELECT;
  if (byte & 0x80)
   send_data |= NVR_BITOUT;

  outb(send_data, io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);
  outb((send_data | NVR_CLOCK), io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);
 }
 outb(NVR_SELECT, io_port + TRM_S1040_GEN_NVRAM);
 trms1040_wait_30us(io_port);


 outb(0, io_port + TRM_S1040_GEN_NVRAM);
 trms1040_wait_30us(io_port);

 outb(NVR_SELECT, io_port + TRM_S1040_GEN_NVRAM);
 trms1040_wait_30us(io_port);


 while (1) {
  outb((NVR_SELECT | NVR_CLOCK), io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);

  outb(NVR_SELECT, io_port + TRM_S1040_GEN_NVRAM);
  trms1040_wait_30us(io_port);

  if (inb(io_port + TRM_S1040_GEN_NVRAM) & NVR_BITIN)
   break;
 }


 outb(0, io_port + TRM_S1040_GEN_NVRAM);
}
