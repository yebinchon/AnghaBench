
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
typedef int u16 ;
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;
typedef enum spi_compare_returns { ____Placeholder_spi_compare_returns } spi_compare_returns ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ ILLEGAL_REQUEST ;
 int KERN_ERR ;
 int READ_BUFFER ;
 int SDEV_QUIESCE ;
 int SPI_COMPARE_FAILURE ;
 int SPI_COMPARE_SKIP_TEST ;
 int SPI_COMPARE_SUCCESS ;
 int WRITE_BUFFER ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int min (int,int) ;
 int scsi_device_online (struct scsi_device*) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int) ;
 int spi_execute (struct scsi_device*,char const*,int ,int*,int,struct scsi_sense_hdr*) ;

__attribute__((used)) static enum spi_compare_returns
spi_dv_device_echo_buffer(struct scsi_device *sdev, u8 *buffer,
     u8 *ptr, const int retries)
{
 int len = ptr - buffer;
 int j, k, r, result;
 unsigned int pattern = 0x0000ffff;
 struct scsi_sense_hdr sshdr;

 const char spi_write_buffer[] = {
  WRITE_BUFFER, 0x0a, 0, 0, 0, 0, 0, len >> 8, len & 0xff, 0
 };
 const char spi_read_buffer[] = {
  READ_BUFFER, 0x0a, 0, 0, 0, 0, 0, len >> 8, len & 0xff, 0
 };



 for (j = 0; j < len; ) {


  for ( ; j < min(len, 32); j++)
   buffer[j] = j;
  k = j;


  for ( ; j < min(len, k + 32); j += 2) {
   u16 *word = (u16 *)&buffer[j];

   *word = (j & 0x02) ? 0x0000 : 0xffff;
  }
  k = j;


  for ( ; j < min(len, k + 32); j += 2) {
   u16 *word = (u16 *)&buffer[j];

   *word = (j & 0x02) ? 0x5555 : 0xaaaa;
  }
  k = j;

  for ( ; j < min(len, k + 32); j += 4) {
   u32 *word = (unsigned int *)&buffer[j];
   u32 roll = (pattern & 0x80000000) ? 1 : 0;

   *word = pattern;
   pattern = (pattern << 1) | roll;
  }

 }

 for (r = 0; r < retries; r++) {
  result = spi_execute(sdev, spi_write_buffer, DMA_TO_DEVICE,
         buffer, len, &sshdr);
  if(result || !scsi_device_online(sdev)) {

   scsi_device_set_state(sdev, SDEV_QUIESCE);
   if (scsi_sense_valid(&sshdr)
       && sshdr.sense_key == ILLEGAL_REQUEST

       && sshdr.asc == 0x24 && sshdr.ascq == 0x00)





    return SPI_COMPARE_SKIP_TEST;


   sdev_printk(KERN_ERR, sdev, "Write Buffer failure %x\n", result);
   return SPI_COMPARE_FAILURE;
  }

  memset(ptr, 0, len);
  spi_execute(sdev, spi_read_buffer, DMA_FROM_DEVICE,
       ptr, len, ((void*)0));
  scsi_device_set_state(sdev, SDEV_QUIESCE);

  if (memcmp(buffer, ptr, len) != 0)
   return SPI_COMPARE_FAILURE;
 }
 return SPI_COMPARE_SUCCESS;
}
