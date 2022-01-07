
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int dummy; } ;



__attribute__((used)) static inline int sd_zbc_read_zones(struct scsi_disk *sdkp,
        unsigned char *buf)
{
 return 0;
}
