
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int device; } ;
struct gendisk {int dummy; } ;
struct blk_zone {int dummy; } ;
typedef int sector_t ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int get_unaligned_be32 (unsigned char*) ;
 int kvfree (unsigned char*) ;
 unsigned int min (unsigned int,int) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;
 int sd_is_zoned (struct scsi_disk*) ;
 unsigned char* sd_zbc_alloc_report_buffer (struct scsi_disk*,unsigned int,size_t*) ;
 int sd_zbc_do_report_zones (struct scsi_disk*,unsigned char*,size_t,int ,int) ;
 int sd_zbc_parse_report (struct scsi_disk*,unsigned char*,struct blk_zone*) ;
 int sectors_to_logical (int ,int ) ;

int sd_zbc_report_zones(struct gendisk *disk, sector_t sector,
   struct blk_zone *zones, unsigned int *nr_zones)
{
 struct scsi_disk *sdkp = scsi_disk(disk);
 unsigned int i, nrz = *nr_zones;
 unsigned char *buf;
 size_t buflen = 0, offset = 0;
 int ret = 0;

 if (!sd_is_zoned(sdkp))

  return -EOPNOTSUPP;

 buf = sd_zbc_alloc_report_buffer(sdkp, nrz, &buflen);
 if (!buf)
  return -ENOMEM;

 ret = sd_zbc_do_report_zones(sdkp, buf, buflen,
   sectors_to_logical(sdkp->device, sector), 1);
 if (ret)
  goto out;

 nrz = min(nrz, get_unaligned_be32(&buf[0]) / 64);
 for (i = 0; i < nrz; i++) {
  offset += 64;
  sd_zbc_parse_report(sdkp, buf + offset, zones);
  zones++;
 }

 *nr_zones = nrz;

out:
 kvfree(buf);

 return ret;
}
