
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int* cmd; unsigned char* buffer; int buflen; int timeout; int data_direction; } ;
typedef int Scsi_CD ;


 int DMA_FROM_DEVICE ;
 int GPCMD_READ_CD ;
 int IOCTL_TIMEOUT ;
 int KERN_INFO ;
 int memset (struct packet_command*,int ,int) ;
 int sr_do_ioctl (int *,struct packet_command*) ;
 int sr_printk (int ,int *,char*,int,int,int) ;

__attribute__((used)) static int sr_read_cd(Scsi_CD *cd, unsigned char *dest, int lba, int format, int blksize)
{
 struct packet_command cgc;






 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.cmd[0] = GPCMD_READ_CD;
 cgc.cmd[1] = ((format & 7) << 2);
 cgc.cmd[2] = (unsigned char) (lba >> 24) & 0xff;
 cgc.cmd[3] = (unsigned char) (lba >> 16) & 0xff;
 cgc.cmd[4] = (unsigned char) (lba >> 8) & 0xff;
 cgc.cmd[5] = (unsigned char) lba & 0xff;
 cgc.cmd[8] = 1;
 switch (blksize) {
 case 2336:
  cgc.cmd[9] = 0x58;
  break;
 case 2340:
  cgc.cmd[9] = 0x78;
  break;
 case 2352:
  cgc.cmd[9] = 0xf8;
  break;
 default:
  cgc.cmd[9] = 0x10;
  break;
 }
 cgc.buffer = dest;
 cgc.buflen = blksize;
 cgc.data_direction = DMA_FROM_DEVICE;
 cgc.timeout = IOCTL_TIMEOUT;
 return sr_do_ioctl(cd, &cgc);
}
