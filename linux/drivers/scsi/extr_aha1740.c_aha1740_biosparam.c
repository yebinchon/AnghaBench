
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int host; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int translation; } ;


 int DEB (int ) ;
 TYPE_1__* HOSTDATA (int ) ;
 int printk (char*) ;

__attribute__((used)) static int aha1740_biosparam(struct scsi_device *sdev,
        struct block_device *dev,
        sector_t capacity, int* ip)
{
 int size = capacity;
 int extended = HOSTDATA(sdev->host)->translation;

 DEB(printk("aha1740_biosparam\n"));
 if (extended && (ip[2] > 1024)) {
  ip[0] = 255;
  ip[1] = 63;
  ip[2] = size / (255 * 63);
 } else {
  ip[0] = 64;
  ip[1] = 32;
  ip[2] = size >> 11;
 }
 return 0;
}
