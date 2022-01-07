
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_cd {int cdi; int device; } ;
struct gendisk {int dummy; } ;


 int ENXIO ;
 int MAX_RETRIES ;
 int SR_TIMEOUT ;
 int get_sectorsize (struct scsi_cd*) ;
 struct scsi_cd* scsi_cd_get (struct gendisk*) ;
 int scsi_cd_put (struct scsi_cd*) ;
 scalar_t__ scsi_test_unit_ready (int ,int ,int ,struct scsi_sense_hdr*) ;
 int sr_cd_check (int *) ;

__attribute__((used)) static int sr_block_revalidate_disk(struct gendisk *disk)
{
 struct scsi_sense_hdr sshdr;
 struct scsi_cd *cd;

 cd = scsi_cd_get(disk);
 if (!cd)
  return -ENXIO;


 if (scsi_test_unit_ready(cd->device, SR_TIMEOUT, MAX_RETRIES, &sshdr))
  goto out;

 sr_cd_check(&cd->cdi);
 get_sectorsize(cd);
out:
 scsi_cd_put(cd);
 return 0;
}
