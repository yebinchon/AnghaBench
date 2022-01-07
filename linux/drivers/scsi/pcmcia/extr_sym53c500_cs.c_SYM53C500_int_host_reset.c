
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C4_IMG ;
 int CHIP_RESET ;
 int CMD_REG ;
 int CONFIG4 ;
 int SCSI_NOP ;
 int SCSI_RESET ;
 int chip_init (int) ;
 int outb (int ,int) ;

__attribute__((used)) static void
SYM53C500_int_host_reset(int io_port)
{
 outb(C4_IMG, io_port + CONFIG4);
 outb(CHIP_RESET, io_port + CMD_REG);
 outb(SCSI_NOP, io_port + CMD_REG);
 outb(SCSI_RESET, io_port + CMD_REG);
 chip_init(io_port);
}
