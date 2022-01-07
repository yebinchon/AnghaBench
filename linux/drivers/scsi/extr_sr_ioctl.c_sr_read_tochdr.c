
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cd {int dummy; } ;
struct packet_command {int* cmd; unsigned char* buffer; int buflen; int quiet; int data_direction; int timeout; } ;
struct cdrom_tochdr {unsigned char cdth_trk0; unsigned char cdth_trk1; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPCMD_READ_TOC_PMA_ATIP ;
 int IOCTL_TIMEOUT ;
 int SR_GFP_DMA (struct scsi_cd*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int) ;
 int memset (struct packet_command*,int ,int) ;
 int sr_do_ioctl (struct scsi_cd*,struct packet_command*) ;

__attribute__((used)) static int sr_read_tochdr(struct cdrom_device_info *cdi,
  struct cdrom_tochdr *tochdr)
{
 struct scsi_cd *cd = cdi->handle;
 struct packet_command cgc;
 int result;
 unsigned char *buffer;

 buffer = kmalloc(32, GFP_KERNEL | SR_GFP_DMA(cd));
 if (!buffer)
  return -ENOMEM;

 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.timeout = IOCTL_TIMEOUT;
 cgc.cmd[0] = GPCMD_READ_TOC_PMA_ATIP;
 cgc.cmd[8] = 12;
 cgc.buffer = buffer;
 cgc.buflen = 12;
 cgc.quiet = 1;
 cgc.data_direction = DMA_FROM_DEVICE;

 result = sr_do_ioctl(cd, &cgc);

 tochdr->cdth_trk0 = buffer[2];
 tochdr->cdth_trk1 = buffer[3];

 kfree(buffer);
 return result;
}
