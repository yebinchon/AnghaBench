
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t10_pi_tuple {scalar_t__ app_tag; } ;
struct scsi_cmnd {int dummy; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ cpu_to_be16 (int) ;
 int dif_copy_prot (struct scsi_cmnd*,scalar_t__,unsigned int,int) ;
 int dif_errors ;
 struct t10_pi_tuple* dif_store (scalar_t__) ;
 int dif_verify (struct t10_pi_tuple*,int ,scalar_t__,int ) ;
 int dix_reads ;
 int lba2fake_store (scalar_t__) ;

__attribute__((used)) static int prot_verify_read(struct scsi_cmnd *SCpnt, sector_t start_sec,
       unsigned int sectors, u32 ei_lba)
{
 unsigned int i;
 struct t10_pi_tuple *sdt;
 sector_t sector;

 for (i = 0; i < sectors; i++, ei_lba++) {
  int ret;

  sector = start_sec + i;
  sdt = dif_store(sector);

  if (sdt->app_tag == cpu_to_be16(0xffff))
   continue;

  ret = dif_verify(sdt, lba2fake_store(sector), sector, ei_lba);
  if (ret) {
   dif_errors++;
   return ret;
  }
 }

 dif_copy_prot(SCpnt, start_sec, sectors, 1);
 dix_reads++;

 return 0;
}
